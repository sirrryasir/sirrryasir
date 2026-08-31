export function formatDate(date: Date | string): string {
  const parsedDate = typeof date === "string" ? new Date(date) : date;

  return parsedDate.toLocaleDateString("en-US", {
    month: "short",
    day: "numeric",
    year: "numeric",
  });
}
