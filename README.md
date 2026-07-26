# Zubárna — konzultant lékových interakcí pro stomatologickou praxi

Skill pro [Claude Code](https://claude.com/claude-code) (a další nástroje pracující s formátem
Markdown skillů) na rychlou orientační konzultaci lékových interakcí a předepisování
**specificky ve stomatologii**, s důrazem na české prostředí.

Vzniklo jako pomůcka „u křesla" — pro rychlé dotazy typu *pacient bere X a Y, mohu mu dnes dát
Z?*, kde je potřeba stručná odpověď s jasným praktickým dopadem na plánovaný zákrok, ne dlouhý
farmakologický výklad.

## ⚠️ Důležitý disclaimer

**Toto není zdravotnický prostředek ani náhrada odborného úsudku.** Jde o orientační pomůcku
sestavenou s pomocí AI (Claude) z veřejně dostupných zdrojů. Obsah:

- **nebyl klinicky validován** žádnou odbornou institucí ani odborníkem,
- může obsahovat nepřesnosti nebo být časem zastaralý (SPC a doporučené postupy se mění),
- **nikdy nenahrazuje** ověření v aktuálním SPC, odborné databázi lékových interakcí nebo
  konzultaci s ošetřujícím lékařem pacienta.

Používejte výhradně jako rychlý orientační filtr a checklist, ne jako zdroj pravdy pro klinické
rozhodnutí. Autoři nenesou odpovědnost za škody vzniklé použitím tohoto obsahu bez nezávislého
ověření.

Položky označené `[?]` v referenčním přehledu jsou místa, kde je evidence slabá nebo se zdroje
rozcházejí — ty ověřujte přednostně.

## Co skill pokrývá

- Rychlý screening „červených vlajek" v lékové anamnéze
- Převod běžných českých obchodních názvů na účinné látky
- Lokální anestetika s adrenalinem (betablokátory, TCA, kardiaci)
- Antibiotika v zubní ordinaci, včetně alergie na penicilin a profylaxe infekční endokarditidy
- Analgetika — NSAID vs. paracetamol vs. metamizol u rizikových pacientů
- Antikoagulancia a antiagregancia u extrakcí (warfarin, DOAC)
- Bisfosfonáty, denosumab a riziko MRONJ
- Sedace, antimykotika
- Předepisování v těhotenství a při kojení

## Obsah repozitáře

- [`SKILL.md`](SKILL.md) — definice skillu (role, workflow, formát odpovědi, zdroje)
- [`reference/dentalni_interakce_prehled.md`](reference/dentalni_interakce_prehled.md) —
  referenční přehled tříděný podle závažnosti (🔴 vysoká / 🟡 střední / 🟢 nízká)

## Zdroje, ze kterých skill vychází

**Specificky stomatologické:**
- [SDCEP — Drug Prescribing for Dentistry](https://www.sdcepdentalprescribing.nhs.scot/) —
  volně dostupné, bez registrace, řazeno podle klinického problému, vychází z BNF
- [SDCEP — Management of Dental Patients Taking Anticoagulants or Antiplatelet Drugs](https://www.sdcep.org.uk/published-guidance/)
- [Česká stomatologická komora](https://www.dent.cz/) / [časopis LKS](https://www.lks-casopis.cz/) —
  odborné stanovisko č. 1/2023 k racionální indikaci systémových antibiotik
- [Česká kardiologická společnost — profylaxe infekční endokarditidy (2024)](https://infektologie.cz/standardy2/)

**Lékové databáze:**
- [SÚKL — Databáze léčivých přípravků](https://prehledy.sukl.cz/prehled_leciv.html) — české SPC
- [SÚKL — otevřená data](https://opendata.sukl.cz/) — DLP a SPC jako CSV a REST API
- [EMA](https://www.ema.europa.eu/) — evropské SmPC
- [Medscape Drug Interaction Checker](https://reference.medscape.com/drug-interactionchecker)
- [Drugs.com Interaction Checker](https://www.drugs.com/drug_interactions.html)
- [openFDA Drug Label API](https://open.fda.gov/apis/drug/label/)

> **Poznámka:** NLM RxNav *Drug Interaction API* byla zrušena v lednu 2024 bez náhrady —
> nemá smysl na ni stavět. RxNorm pro normalizaci názvů léků funguje dál.

## Jak použít s Claude Code

```bash
git clone https://github.com/KassiusAter/zubarna-lekove-interakce.git ~/.claude/skills/zubarna
```

Skill se pak automaticky nabídne v seznamu dostupných skillů.

## Licence

MIT — viz [LICENSE](LICENSE). Obsah je poskytován „tak jak je", bez záruky přesnosti nebo
vhodnosti pro klinické použití — viz disclaimer výše.
