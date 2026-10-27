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
  #link("https://linkedin.com/in/sirryasir")[LinkedIn]
]

== Summary
Software engineer working on open-source developer tools and local products. First place at the Telesom Xalkadoon Hackathon 2025.

== Skills
- *Languages:* Go, TypeScript, Python, Rust

== Experience

#resume-entry(
  title: "Aduunyo Solutions",
  location: "Hybrid",
  subtitle: "Software Engineer",
  date: "Jan 2026 – Present",
)[
  - Migrated client and transaction data from a legacy CRM to the new Aduunyo CRM (Python ETL).
  - Review code and advise on system architecture.
]

#resume-entry(
  title: "Ardaykaab Academy",
  location: "Hybrid",
  subtitle: "Mentor",
  date: "Feb 2026 – Present",
)[
  - Mentor students in full-stack development, REST APIs, Git and databases.
]

#resume-entry(
  title: "Freelance",
  location: "Remote",
  subtitle: "Digital Marketer & Graphic Designer",
  date: "2023 – 2025",
)[
  - Designed branding and user interfaces for startups (Figma, Illustrator, Photoshop).
  - Ran digital ad campaigns for clients.
]

== Projects

#resume-entry(
  title: "Mongoose Studio",
  location: "TypeScript, Node.js, React",
  subtitle: "Open Source Creator",
  date: "2026",
)[
  - CLI that serves a local web GUI for a project's Mongoose models and data. 2k+ npm downloads.
]

#resume-entry(
  title: "shotdock",
  location: "Rust, GTK4, Wayland",
  subtitle: "Open Source Creator",
  date: "2026",
)[
  - Screenshot and screen recording tool for Wayland compositors (Hyprland, Sway, River, Niri) with window framing and OCR. Packaged on the AUR.
]

#resume-entry(
  title: "Hush",
  location: "QML, Quickshell, Hyprland",
  subtitle: "Open Source Creator",
  date: "2026",
)[
  - Dynamic island shell for Hyprland, built on Quickshell. Combines the bar, launcher, notifications, control center, lock and login screens in one pill. Packaged on the AUR.
]

== Awards & Hackathons

#resume-entry(
  title: "1st Place Winner — Telesom Xalkadoon Hackathon",
  location: "",
  subtitle: "Telesom Academy & Telesom Group",
  date: "Dec 2025",
)[
  - Won first place and a \$5,000 prize for Ogaal, a drought early-warning system with USSD and SMS reporting and a Python analytics engine.
]
