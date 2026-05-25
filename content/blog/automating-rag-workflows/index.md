---
title: "Automatisering af RAG-workflows"
date: 2026-05-01
draft: false
tags: ["AI", "Automatisering", "Udvikling"]
---

# Automatisering af RAG-workflows

## Emnet

Et RAG-workflow handler om at give en AI-model adgang til opdateret viden. RAG står for Retrieval-Augmented Generation, og ideen er, at modellen først henter relevant information og derefter svarer ud fra den information.

Problemet er, at viden hurtigt kan blive forældet. Hvis man for eksempel har en chatbot på sin portfolio, skal den kende de nyeste projekter, blogindlæg og ændringer på siden.

Hvis man selv skal opdatere chatbotten hver gang, bliver det nemt glemt. Derfor giver det mening at automatisere processen.

Et simpelt workflow kan se sådan ud:

```text
Markdown-filer
    -> generator-script
    -> knowledge file
    -> Hugo build
    -> deploy
```

## Hvorfor er det nyttigt?

Det er nyttigt, fordi chatbotten bliver holdt opdateret uden manuelt arbejde.

Hvis jeg ændrer et blogindlæg eller tilføjer et nyt projekt, skal chatbotten helst kunne svare ud fra det nye indhold. Ellers kan den give svar, der lyder rigtige, men som faktisk er forældede.

Automatisering gør også løsningen mere stabil. I stedet for at huske en manuel eksport kan man lade GitHub Actions eller et andet workflow generere vidensfilen automatisk, når der pushes ændringer.

Det gør AI-delen mere troværdig, fordi den følger med det rigtige indhold på sitet.

## Hvor kan man bruge det?

Et automatiseret RAG-workflow kan bruges mange steder, hvor indhold ændrer sig løbende.

Det kan for eksempel være:

1. En portfolio-chatbot.
2. En intern supportbot.
3. Dokumentation for et produkt.
4. En vidensbase til kundeservice.
5. Et intranet med ofte opdaterede informationer.

I mit tilfælde giver det især mening på en portfolio. Hvis en besøgende spørger chatbotten om mine projekter, skal den svare ud fra det indhold, der faktisk ligger på siden.

## Hvad har jeg lært?

Jeg har lært, at RAG ikke kun handler om AI. Det handler også om data og vedligeholdelse.

Hvis inputtet er rodet, bliver svarene også dårligere. Markdown-filer kan indeholde front matter, HTML, kodeblokke og andet, som ikke nødvendigvis er godt for en chatbot. Derfor skal indholdet renses, før det bruges som knowledge file.

Jeg har også lært, at simple workflows ofte er nok. Man behøver ikke starte med en stor database eller en kompliceret pipeline. Til en portfolio kan et script og en statisk tekstfil være en fin løsning.

Det vigtigste er, at kilden til viden og chatbotten ikke kommer ud af sync.

## Konklusion

Automatisering af RAG-workflows er nyttigt, fordi det holder AI-systemets viden opdateret.

For mig er den største læring, at AI-løsninger også kræver helt almindelig softwaredisciplin. Data skal være rene, processen skal kunne gentages, og systemet skal være nemt at vedligeholde.

En chatbot bliver først rigtig brugbar, når den svarer ud fra det indhold, der faktisk er aktuelt.
