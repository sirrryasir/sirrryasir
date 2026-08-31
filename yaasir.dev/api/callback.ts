import type { VercelRequest, VercelResponse } from "@vercel/node";

// Vercel Serverless Function to handle GitHub OAuth callback and exchange authorization code for access token
export default async function handler(
  req: VercelRequest,
  res: VercelResponse,
): Promise<void> {
  const code = req.query.code as string;
  const client_id = process.env.OAUTH_CLIENT_ID || process.env.GITHUB_CLIENT_ID;
  const client_secret =
    process.env.OAUTH_CLIENT_SECRET || process.env.GITHUB_CLIENT_SECRET;

  const host =
    (req.headers["x-forwarded-host"] as string) || req.headers.host || "";
  const protocol = (req.headers["x-forwarded-proto"] as string) || "https";
  const redirect_uri = `${protocol}://${host}/api/callback`;

  if (!code) {
    res.status(400).send("OAuth Error: Missing code parameter.");
    return;
  }

  if (!client_id || !client_secret) {
    res
      .status(500)
      .send(
        "OAuth Configuration Error: Missing Client ID or Client Secret environment variables on Vercel.",
      );
    return;
  }

  try {
    const response = await fetch(
      "https://github.com/login/oauth/access_token",
      {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Accept: "application/json",
        },
        body: JSON.stringify({
          client_id,
          client_secret,
          code,
          redirect_uri,
        }),
      },
    );

    const data = (await response.json()) as {
      error?: string;
      error_description?: string;
      access_token?: string;
    };

    if (data.error) {
      res
        .status(400)
        .send(`OAuth Error: ${data.error_description || data.error}`);
      return;
    }

    const token = data.access_token;
    const provider = "github";

    // Send postMessage response to authenticate Decap CMS in the parent window
    const content = `
      <!DOCTYPE html>
      <html>
      <head>
        <title>Authenticating...</title>
      </head>
      <body>
        <p>Authorizing with GitHub... Please wait.</p>
        <script>
          const receiveMessage = (message) => {
            if (message.data === "authorizing:github") {
              window.opener.postMessage(
                'authorization:github:success:${JSON.stringify({ token, provider })}',
                message.origin
              );
              window.removeEventListener("message", receiveMessage, false);
            }
          };
          window.addEventListener("message", receiveMessage, false);
          window.opener.postMessage("authorizing:github", "*");
        </script>
      </body>
      </html>
    `;

    res.setHeader("Content-Type", "text/html");
    res.status(200).send(content);
  } catch (error: any) {
    res.status(500).send(`Server Error: ${error.message}`);
  }
}
