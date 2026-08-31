import type { VercelRequest, VercelResponse } from "@vercel/node";

// Vercel Serverless Function to initiate GitHub OAuth for Decap CMS
export default function handler(req: VercelRequest, res: VercelResponse): void {
  const client_id = process.env.OAUTH_CLIENT_ID || process.env.GITHUB_CLIENT_ID;
  const host =
    (req.headers["x-forwarded-host"] as string) || req.headers.host || "";
  const protocol = (req.headers["x-forwarded-proto"] as string) || "https";
  const redirect_uri = `${protocol}://${host}/api/callback`;
  const scope = "repo,user";

  if (!client_id) {
    res
      .status(500)
      .send(
        "OAuth Configuration Error: Missing OAUTH_CLIENT_ID or GITHUB_CLIENT_ID environment variable on Vercel.",
      );
    return;
  }

  const authUrl = `https://github.com/login/oauth/authorize?client_id=${client_id}&redirect_uri=${encodeURIComponent(redirect_uri)}&scope=${scope}`;

  res.writeHead(302, { Location: authUrl });
  res.end();
}
