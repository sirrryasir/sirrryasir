export function getReadingTime(text: string): string {
  if (!text) return "1 min read";
  // Strip markdown characters if needed, but a simple word split is usually enough
  const words = text
    .replace(/<[^>]*>?/gm, "")
    .trim()
    .split(/\s+/).length;
  const time = Math.ceil(words / 200); // Average 200 words per minute
  return `${time} min read`;
}
