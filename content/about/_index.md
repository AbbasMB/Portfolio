---
title: "About"
---

<style>
  .about-page {
    width: min(100%, 980px);
    margin: 0 auto;
    padding: 2.5rem 0 4rem;
    text-align: center;
    background:
      linear-gradient(180deg, rgba(224, 242, 254, 0.72), rgba(255, 255, 255, 0) 38%),
      radial-gradient(circle at top, rgba(125, 211, 252, 0.32), transparent 34rem);
    border-radius: 8px;
  }

  .about-photo {
    width: min(280px, 72vw);
    height: min(280px, 72vw);
    object-fit: cover;
    border-radius: 8px;
    display: block;
    margin: 0 auto 1.75rem;
    box-shadow: 0 18px 45px rgba(14, 116, 144, 0.22);
    transition: transform 180ms ease, box-shadow 180ms ease;
  }

  .about-photo:hover {
    transform: translateY(-4px) scale(1.015);
    box-shadow: 0 24px 55px rgba(14, 116, 144, 0.28);
  }

  .about-eyebrow {
    margin: 0 auto 0.75rem;
    color: #0369a1;
    font-size: 0.95rem;
    font-weight: 700;
    letter-spacing: 0;
  }

  .about-title {
    margin: 0 auto;
    max-width: 760px;
    font-size: clamp(2.25rem, 8vw, 4.25rem);
    line-height: 1.05;
    font-weight: 800;
  }

  .about-lead {
    max-width: 720px;
    margin: 1.25rem auto 0;
    font-size: 1.18rem;
    line-height: 1.8;
    color: #525252;
  }

  .about-actions {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 0.75rem;
    margin-top: 1.75rem;
  }

  .about-button {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    min-height: 44px;
    padding: 0.65rem 1rem;
    border-radius: 8px;
    border: 1px solid #0284c7;
    font-weight: 700;
    text-decoration: none;
    transition: transform 160ms ease, box-shadow 160ms ease, background-color 160ms ease, color 160ms ease;
  }

  .about-button.primary {
    background: #0284c7;
    color: white;
    box-shadow: 0 10px 24px rgba(2, 132, 199, 0.24);
  }

  .about-button.secondary {
    color: #0369a1;
    background: rgba(224, 242, 254, 0.72);
  }

  .about-button:hover {
    transform: translateY(-2px);
    box-shadow: 0 14px 30px rgba(2, 132, 199, 0.2);
  }

  .about-button.primary:hover {
    background: #0369a1;
  }

  .about-button.secondary:hover {
    background: #bae6fd;
    color: #075985;
  }

  .about-section {
    margin-top: 3.5rem;
  }

  .about-section h2 {
    margin: 0 auto 1rem;
    font-size: 1.75rem;
    font-weight: 800;
  }

  .about-copy {
    max-width: 720px;
    margin: 0 auto;
    color: #404040;
    line-height: 1.85;
  }

  .about-copy p {
    margin: 1rem 0 0;
  }

  .about-grid {
    display: grid;
    grid-template-columns: repeat(3, minmax(0, 1fr));
    gap: 1rem;
    margin-top: 1.5rem;
    text-align: left;
  }

  .about-item {
    border: 1px solid rgba(2, 132, 199, 0.18);
    border-radius: 8px;
    padding: 1.15rem;
    background: rgba(240, 249, 255, 0.72);
    box-shadow: 0 10px 28px rgba(14, 116, 144, 0.08);
    transition: transform 160ms ease, border-color 160ms ease, box-shadow 160ms ease, background-color 160ms ease;
  }

  .about-item:hover {
    transform: translateY(-4px);
    border-color: rgba(2, 132, 199, 0.38);
    background: rgba(224, 242, 254, 0.86);
    box-shadow: 0 18px 36px rgba(14, 116, 144, 0.14);
  }

  .about-item h3 {
    margin: 0 0 0.4rem;
    font-size: 1.05rem;
    font-weight: 800;
  }

  .about-item p {
    margin: 0;
    color: #525252;
    line-height: 1.65;
    font-size: 0.98rem;
  }

  .about-list {
    max-width: 720px;
    margin: 1.25rem auto 0;
    padding: 0;
    list-style: none;
    display: grid;
    gap: 0.75rem;
    text-align: left;
  }

  .about-list li {
    border-left: 4px solid #0284c7;
    padding: 0.5rem 0 0.5rem 1rem;
    background: rgba(224, 242, 254, 0.72);
    border-radius: 0 8px 8px 0;
    transition: transform 160ms ease, background-color 160ms ease;
  }

  .about-list li:hover {
    transform: translateX(4px);
    background: rgba(186, 230, 253, 0.86);
  }

  .tech-stack {
    display: grid;
    grid-template-columns: repeat(3, minmax(0, 1fr));
    gap: 1rem;
    margin-top: 1.5rem;
    text-align: left;
  }

  .tech-box {
    border: 1px solid rgba(2, 132, 199, 0.18);
    border-radius: 8px;
    padding: 1.15rem;
    background: rgba(240, 249, 255, 0.78);
    box-shadow: 0 10px 28px rgba(14, 116, 144, 0.08);
    transition: transform 160ms ease, border-color 160ms ease, box-shadow 160ms ease, background-color 160ms ease;
  }

  .tech-box:hover {
    transform: translateY(-4px);
    border-color: rgba(2, 132, 199, 0.38);
    background: rgba(224, 242, 254, 0.9);
    box-shadow: 0 18px 36px rgba(14, 116, 144, 0.14);
  }

  .tech-box h3 {
    margin: 0 0 0.85rem;
    font-size: 1.05rem;
    font-weight: 800;
  }

  .tech-tags {
    display: flex;
    flex-wrap: wrap;
    gap: 0.5rem;
    margin: 0;
    padding: 0;
    list-style: none;
  }

  .tech-tags li {
    border: 1px solid rgba(2, 132, 199, 0.32);
    border-radius: 8px;
    padding: 0.25rem 0.6rem;
    color: #0369a1;
    background: rgba(224, 242, 254, 0.82);
    font-size: 0.92rem;
    font-weight: 700;
    line-height: 1.5;
    transition: transform 140ms ease, background-color 140ms ease, color 140ms ease;
  }

  .tech-tags li:hover {
    transform: translateY(-2px);
    color: #075985;
    background: #bae6fd;
  }

  @media (max-width: 760px) {
    .about-page {
      padding-top: 1.5rem;
    }

    .about-grid {
      grid-template-columns: 1fr;
      text-align: center;
    }

    .tech-stack {
      grid-template-columns: 1fr;
      text-align: center;
    }

    .tech-tags {
      justify-content: center;
    }

    .about-list {
      text-align: center;
    }

    .about-list li {
      border-left: 0;
      border-top: 4px solid #0284c7;
      padding: 0.85rem;
      border-radius: 8px;
    }
  }

  html.dark .about-lead,
  html.dark .about-copy,
  html.dark .about-item p {
    color: #d4d4d4;
  }

  html.dark .about-item {
    background: rgba(12, 74, 110, 0.26);
    border-color: rgba(125, 211, 252, 0.22);
  }

  html.dark .tech-box {
    background: rgba(12, 74, 110, 0.26);
    border-color: rgba(125, 211, 252, 0.22);
  }

  html.dark .tech-tags li {
    color: #7dd3fc;
    background: rgba(14, 116, 144, 0.22);
    border-color: rgba(125, 211, 252, 0.3);
  }

  html.dark .about-list li {
    background: rgba(14, 116, 144, 0.2);
  }

  html.dark .about-button.secondary {
    color: #7dd3fc;
    background: rgba(14, 116, 144, 0.22);
  }

  html.dark .about-page {
    background:
      linear-gradient(180deg, rgba(12, 74, 110, 0.34), rgba(38, 38, 38, 0) 38%),
      radial-gradient(circle at top, rgba(14, 165, 233, 0.22), transparent 34rem);
  }
</style>

<div class="about-page">
  <img class="about-photo" src="about-me.jpg" alt="Portrait of Abbas M. Badreddine" />

  <p class="about-eyebrow">Computer Science student in Denmark</p>

  <h1 class="about-title">Hi, I'm Abbas. I'm building my way into software development.</h1>

  <p class="about-lead">
    My background is not a straight line, and that is one of the things I value most about it.
    I have worked as a firefighter, completed military service, and built experience in sales
    and insurance advising. Today, I am turning that experience into a focused career in tech.
  </p>

  <div class="about-actions">
    <a class="about-button primary" href="../projects/">View Projects</a>
    <a class="about-button secondary" href="../blog/">Read Blog</a>
  </div>

  <section class="about-section">
    <h2>What I Bring</h2>
    <div class="about-grid">
      <div class="about-item">
        <h3>Discipline</h3>
        <p>Firefighting and military service taught me structure, responsibility, and calm decision-making.</p>
      </div>
      <div class="about-item">
        <h3>Communication</h3>
        <p>Sales and advising taught me how to listen, explain clearly, and understand real user needs.</p>
      </div>
      <div class="about-item">
        <h3>Consistency</h3>
        <p>Balancing studies and family life has made long-term progress more important than quick wins.</p>
      </div>
    </div>
  </section>

  <section class="about-section">
    <h2>My Developer Focus</h2>
    <div class="about-copy">
      <p>
        I am currently studying Computer Science and building a strong technical foundation with Java,
        object-oriented programming, backend concepts, and practical projects.
      </p>
      <p>
        I enjoy learning how systems fit together: clean code, databases, APIs, and user-facing features.
        I am especially interested in building software that solves concrete problems and is easy for people to use.
      </p>
    </div>
  </section>

  <section class="about-section">
    <h2>What I Am Working On</h2>
    <ul class="about-list">
      <li>Improving my Java and object-oriented programming skills through hands-on projects.</li>
      <li>Writing about AI, software development, and what I learn while building.</li>
      <li>Turning my portfolio into a clear picture of how I think, learn, and solve problems.</li>
    </ul>
  </section>

  <section class="about-section">
    <h2>Why This Matters To Me</h2>
    <div class="about-copy">
      <p>
        I am not just changing careers. I am building a future with intention. My goal is to become
        a reliable developer who brings technical skill, maturity, and real-world perspective to a team.
      </p>
    </div>
  </section>

  <section class="about-section">
    <h2>Tech Stack</h2>
    <div class="tech-stack">
      <div class="tech-box">
        <h3>Backend</h3>
        <ul class="tech-tags">
          <li>Java</li>
          <li>C#</li>
          <li>Python</li>
          <li>Spring Boot</li>
        </ul>
      </div>
      <div class="tech-box">
        <h3>Backend Frameworks</h3>
        <ul class="tech-tags">
          <li>Javalin</li>
          <li>Thymeleaf</li>
          <li>Hibernate</li>
        </ul>
      </div>
      <div class="tech-box">
        <h3>Frontend</h3>
        <ul class="tech-tags">
          <li>JavaScript</li>
          <li>React</li>
          <li>CSS</li>
        </ul>
      </div>
      <div class="tech-box">
        <h3>Databases</h3>
        <ul class="tech-tags">
          <li>SQL</li>
          <li>PostgreSQL</li>
          <li>MySQL</li>
          <li>Database Design</li>
        </ul>
      </div>
      <div class="tech-box">
        <h3>DevOps</h3>
        <ul class="tech-tags">
          <li>Docker</li>
          <li>Docker Hub</li>
          <li>GitHub Actions</li>
          <li>Watchtower</li>
          <li>Caddy</li>
          <li>CI/CD</li>
        </ul>
      </div>
      <div class="tech-box">
        <h3>Tools</h3>
        <ul class="tech-tags">
          <li>Bash</li>
          <li>PowerShell</li>
        </ul>
      </div>
      <div class="tech-box">
        <h3>AI and Data</h3>
        <ul class="tech-tags">
          <li>Business Intelligence</li>
          <li>PowerBI</li>
          <li>Jupyter Notebook</li>
          <li>Data Analysis</li>
          <li>Data Visualization</li>
          <li>Machine Learning</li>
        </ul>
      </div>
    </div>
  </section>
</div>
