# Assessment Rubrics for AI-Integrated Learning

Generic and customizable rubric framework for assessing assignments that integrate AI tools (chatbots, LLMs, RAG systems, code assistants, creative AI, etc.) across disciplines.

**For academic staff:** Start with the documents in `outputs/docx/` in numerical order.

---

## Quick Start

### For Users (Academic Staff)

1. Download the Word documents from `outputs/docx/`:
   - `1_README_Getting_Started.docx` — Start here
   - `2_Generic_Rubric_Template.docx` — Your framework
   - `3_Adaptation_Guide.docx` — How to customize
   - `4_Example_CloudCore_Audit.docx` — Worked example

2. Follow the workflow outlined in the README

3. Adapt the template for your unit

### For Maintainers/Developers

**Prerequisites:**
- `pandoc` (for markdown → docx conversion)
- `git`

**Workflow:**

1. Edit markdown files in `sources/`:
   ```bash
   # Make changes to any .md file
   nano sources/2_Generic_Rubric_Template.md
   ```

2. Regenerate Word outputs:
   ```bash
   chmod +x build.sh
   ./build.sh
   ```

3. Commit changes:
   ```bash
   git add sources/ outputs/
   git commit -m "Update rubric criteria and examples"
   ```

---

## Project Structure

```
assessment-rubrics-for-ai/
├── sources/                              # Single source of truth (markdown)
│   ├── 1_README_Getting_Started.md
│   ├── 2_Generic_Rubric_Template.md
│   ├── 3_Adaptation_Guide.md
│   └── 4_Example_CloudCore_Audit.md
├── outputs/
│   ├── docx/                            # Generated Word documents
│   │   ├── 1_README_Getting_Started.docx
│   │   ├── 2_Generic_Rubric_Template.docx
│   │   ├── 3_Adaptation_Guide.docx
│   │   └── 4_Example_CloudCore_Audit.docx
│   └── html/                            # (Optional future) Web versions
├── build.sh                             # Build script (md → docx)
├── .gitignore
└── README.md                            # This file
```

---

## Single Source of Truth

Markdown files (`sources/`) are authoritative. Word documents are generated from these.

**Never edit .docx files directly for long-term changes.** Edit the markdown, then regenerate Word.

**Workflow:**
```
Edit .md → Run build.sh → Commit both → Distribute .docx
```

---

## Customizing Rubrics

See `3_Adaptation_Guide.md` for detailed guidance on:
- Different AI modalities (chatbots, LLMs, RAG, code, creative AI)
- Discipline-specific adjustments (Business, STEM, Humanities, Law)
- Weighting by context
- Performance descriptor customization

---

## Background

Developed for Curtin University's A2030 initiative by Dr Michael Borck (Business Information Systems).

**Philosophy:**
- Critical evaluation of AI outputs matters more than tool efficiency
- Transparency is an integrity measure, not a compliance burden
- Process (how students think) is as important as product (outcomes)
- One-size-fits-all rubrics don't work; customization is essential
- Treat AI as a "junior intern" that students must manage and validate

---

## Recent Changes

**v1.0 (Feb 2026):** Initial release
- Generic rubric template
- CloudCore audit example
- Adaptation guide for different AI tools
- Implementation guide for staff

---

## Contributing

**To suggest improvements:**
1. Open an issue describing the change
2. Include examples where relevant
3. Consider disciplinary context

**To add new examples:**
1. Create a new file in `sources/` (e.g., `5_Example_Code_Assistant_Rubric.md`)
2. Update numbering in README
3. Run `build.sh`
4. Commit and push

---

## License

[Add your institution's license/sharing policy]

---

## Contact

Dr Michael Borck
School of Management & Marketing
Curtin University

---

**Last updated:** February 2026
