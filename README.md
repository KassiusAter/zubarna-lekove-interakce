# Zubárna — konzultant lékových interakcí pro stomatologickou praxi

Skill pro [Claude Code](https://claude.com/claude-code) (a další nástroje pracující s formátem
Markdown skillů) na rychlou orientační konzultaci lékových interakcí **specificky ve
stomatologii** — lokální anestetika s adrenalinem, antibiotika běžně předepisovaná v zubní
ambulanci, analgetika, sedace, antikoagulancia u chirurgických výkonů, bisfosfonáty a riziko
MRONJ, kortikosteroidy.

Vzniklo jako pomůcka "u křesla" — pro rychlé dotazy typu *pacient bere X a Y, mohu mu dnes dát
Z?*, kde je potřeba stručná odpověď s jasným praktickým dopadem na plánovaný zákrok, ne dlouhý
farmakologický výklad.

## ⚠️ Důležitý disclaimer

**Toto není zdravotnický nástroj ani náhrada odborného úsudku.** Jde o orientační pomůcku a
souhrn veřejně dostupných zdrojů, sestavený s pomocí AI (Claude). Obsah:

- **nebyl klinicky validován** žádnou odbornou institucí,
- může obsahovat nepřesnosti nebo být časem zastaralý (SPC a doporučené postupy se mění),
- **nikdy nenahrazuje** ověření v aktuálním SPC (Souhrn údajů o přípravku), odborné databázi
  lékových interakcí nebo konzultaci s ošetřujícím lékařem pacienta.

Používejte výhradně jako rychlý orientační filtr, ne jako finální zdroj pro klinické
rozhodnutí. Autoři nenesou odpovědnost za škody vzniklé použitím tohoto obsahu bez nezávislého
ověření.

## Obsah repozitáře

- [`SKILL.md`](SKILL.md) — definice skillu (role, workflow, formát odpovědi, zdroje)
- [`reference/dentalni_interakce_prehled.md`](reference/dentalni_interakce_prehled.md) —
  kurátorovaný přehled nejčastějších stomatologicky relevantních interakcí, tříděný podle
  závažnosti (🔴 vysoká / 🟡 střední / 🟢 nízká)

## Zdroje, ze kterých skill vychází

Primárně (Česko):
- [SÚKL — Databáze léčivých přípravků](https://prehledy.sukl.cz/prehled_leciv.html)
- [ČSK — Česká stomatologická komora](https://www.dent.cz/) / [časopis LKS](https://www.lks-casopis.cz/)

Doplňkově (mezinárodní):
- [Medscape Drug Interaction Checker](https://reference.medscape.com/drug-interactionchecker)
- [Drugs.com Interaction Checker](https://www.drugs.com/drug_interactions.html)
- [BNF — British National Formulary](https://www.bnf.org/) (obsahuje Dental Practitioners' Formulary)
- [EMA — European Medicines Agency](https://www.ema.europa.eu/)

## Jak použít s Claude Code

Zkopírujte tento repozitář (nebo jen `SKILL.md` + `reference/`) do `~/.claude/skills/zubarna/`
a skill se automaticky nabídne v seznamu dostupných skillů.

## Licence

MIT — viz [LICENSE](LICENSE). Obsah je poskytován „tak jak je", bez záruky přesnosti nebo
vhodnosti pro klinické použití — viz disclaimer výše.
