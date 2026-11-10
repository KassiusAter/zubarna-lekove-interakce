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
- Předepisování v těhotenství, při kojení, u dětí a při snížené funkci ledvin

## Jak skill hlídá spolehlivost

- Každá odpověď začíná řádkem **Rozpoznáno** (přípravek → účinná látka → skupina), aby byla
  hned vidět případná záměna léku.
- U každého tvrzení je štítek původu: `přehled`, `ověřeno dnes` (přečteno v primárním zdroji),
  nebo `model` (obecná znalost bez opory).
- Každá sekce přehledu má řádek **Stav**: odkud pochází, zda byla porovnána s originálem zdroje
  a zda ji validoval lékař.
- [`tests/testovaci_dotazy.md`](tests/testovaci_dotazy.md) obsahuje kontrolní dotazy
  s očekávanými body odpovědi — projít po každé větší úpravě.

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
- [Česká kardiologická společnost](https://www.kardio-cz.cz/) — profylaxe infekční endokarditidy (ESC 2023, česká verze 2024)

**Lékové databáze:**
- [SÚKL — Databáze léčivých přípravků](https://prehledy.sukl.cz/prehled_leciv.html) — české SPC
  (stránka se načítá skriptem, AI asistent ji obvykle nepřečte — skill na ni jen odkazuje)
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

## Jak použít v aplikaci Claude (web, iPhone, Android)

1. Spusťte `./build_zip.sh` — vytvoří `dist/zubarna.zip` (jen `SKILL.md` a `reference/`).
2. Na webu claude.ai otevřete nastavení skillů a soubor ZIP nahrajte.
3. Skill je pak dostupný i v mobilní aplikaci pod stejným účtem.

Po každé úpravě přehledu je potřeba ZIP vytvořit a nahrát znovu.

## Licence

MIT — viz [LICENSE](LICENSE). Obsah je poskytován „tak jak je", bez záruky přesnosti nebo
vhodnosti pro klinické použití — viz disclaimer výše.
