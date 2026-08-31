#set document(title: "Yasir Hassan - Resume", author: "Yasir Hassan")
#set page(
  paper: "a4",
  margin: (x: 1.5cm, y: 1.5cm),
)
#set text(
  font: ("Libertinus Serif", "Liberation Sans"),
  size: 11pt,
)

#show heading.where(level: 1): it => [
  #set align(center)
  #set text(size: 22pt, weight: "bold")
  #it.body
]

#show heading.where(level: 2): it => [
  #set text(size: 14pt, weight: "bold", fill: rgb("#000000"))
  #v(5pt)
  #it.body
  #line(length: 100%, stroke: 0.5pt)
  #v(2pt)
]

#let resume-entry(
  title: "",
  location: "",
  subtitle: "",
  date: "",
  body,
) = {
  v(2pt)
  block(width: 100%)[
    #strong(title) #h(1fr) #strong(location) \
    #emph(subtitle) #h(1fr) #emph(date)
  ]
  v(2pt)
  body
}

= Yasir Hassan

#align(center)[
  #link("mailto:hello@yaasir.dev")[hello\@yaasir.dev] |
  #link("tel:+252636919012")[+252 63 6919012] |
  #link("https://yaasir.dev")[yaasir.dev] |
  #link("https://github.com/sirrryasir")[GitHub] |
  #link("https://linkedin.com/in/sirryasir")[LinkedIn] |
  Hargeisa, Somaliland
]

== Summary
I build AI-driven tools and full-stack architectures. Self-taught. Driven by high-performance logic. Guided by simplicity (KISS). Currently writing Go, TypeScript, and Python on Arch Linux & Neovim. Winner of the Telesom Xalkadoon Hackathon 2025.

== Skills
- *Languages:* Go, TypeScript, Python

== Experience

#resume-entry(
  title: "Aduunyo Solutions",
  location: "Hargeisa, Somaliland (Hybrid)",
  subtitle: "Software Engineer",
  date: "Jan 2026 -- Present",
)[
  - *Data Migration Engine*: Designed and executed a custom Python migration script to extract, validate, and securely load thousands of transaction and client records from Upya CRM into a newly developed Aduunyo CRM system with 100% data integrity.
  - *Technical Consulting*: Advised stakeholders on system architecture, audited codebase deliverables for quality assurance, and coordinated cross-functional development efforts.
]

#resume-entry(
  title: "Ardaykaab Academy",
  location: "Hargeisa, Somaliland (Hybrid)",
  subtitle: "Mentor",
  date: "Feb 2026 -- Present",
)[
  - *Instruction & Leadership*: Mentored student cohorts in full-stack architecture, REST API design, Git workflows, and database management, significantly improving their graduation and employment readiness.
]

#resume-entry(
  title: "Freelance",
  location: "Hargeisa, Somaliland (Hybrid)",
  subtitle: "UI/UX Designer & Web Developer",
  date: "2024 -- 2025",
)[
  - *Design & Development*: Designed high-converting user interfaces (UI) and branding materials using Figma, Adobe Illustrator, and Photoshop, accelerating client acquisition and digital presence for multiple businesses.
]

== Projects

#resume-entry(
  title: "Archon CLI",
  location: "Go, AI, CLI",
  subtitle: "Open Source Creator",
  date: "2026",
)[
  - Built a Socratic AI terminal assistant using Go that actively guides developers by asking architectural questions instead of outputting generic code snippets, improving critical thinking and workflow efficiency.
]

#resume-entry(
  title: "Mongoose Studio",
  location: "React, Node.js",
  subtitle: "Open Source Creator",
  date: "2026",
)[
  - Developed a zero-config, React-based local desktop GUI for Mongoose schemas, enabling instant visual data exploration and structure checks for backend developers.
]


== Awards & Hackathons

#resume-entry(
  title: "1st Place Winner — Telesom Xalkadoon Hackathon",
  location: "Hargeisa, Somaliland",
  subtitle: "Telesom Academy & Telesom Group",
  date: "Dec 2025",
)[
  - Awarded 1st place and a \$5,000 prize for designing OGAAL, a community-driven water intelligence and drought early-warning system powered by USSD, SMS, and a Python analytics engine.
]
