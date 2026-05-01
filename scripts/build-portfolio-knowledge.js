const fs = require("fs");
const path = require("path");

const root = process.cwd();

const filesToRead = [
  "index.html",
  "README.md"
];

function cleanHtml(html) {
  return html
    .replace(/<script[\s\S]*?<\/script>/gi, "")
    .replace(/<style[\s\S]*?<\/style>/gi, "")
    .replace(/<[^>]+>/g, " ")
    .replace(/&nbsp;/g, " ")
    .replace(/&amp;/g, "&")
    .replace(/\s+/g, " ")
    .trim();
}

let knowledge = `Abbas Portfolio Knowledge\n\nThis document is automatically generated from Abbas' portfolio repository.\n\n`;

for (const file of filesToRead) {
  const filePath = path.join(root, file);

  if (!fs.existsSync(filePath)) continue;

  const content = fs.readFileSync(filePath, "utf8");
  const cleaned = file.endsWith(".html") ? cleanHtml(content) : content;

  knowledge += `\n\n--- ${file} ---\n\n${cleaned}\n`;
}

fs.mkdirSync(path.join(root, "dist"), { recursive: true });
fs.writeFileSync(path.join(root, "dist", "portfolio-knowledge.txt"), knowledge);

console.log("Knowledge file created: dist/portfolio-knowledge.txt");
