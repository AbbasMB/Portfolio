---
title: "Retrieval-Augmented Generation"
date: 2026-04-20
draft: false
tags: ["AI", "RAG", "LLM", "Maskinlæring"]
---

# Retrieval-Augmented Generation

## Emnet

Retrieval-Augmented Generation, eller RAG, er en måde at få en sprogmodel til at svare ud fra bestemte data.

En almindelig LLM svarer ud fra det, den allerede er trænet på. Det kan være et problem, hvis man spørger om noget internt, nyt eller meget specifikt. Modellen kan gætte og stadig lyde ret sikker.

Med RAG henter systemet først relevant information fra en datakilde. Det kan være dokumenter, PDF'er, en vidensbase eller markdown-filer. Derefter får modellen den information som kontekst, før den svarer.

```text
Spørgsmål
    -> søg relevant viden
    -> giv viden til modellen
    -> generer svar
```

## Hvorfor er det nyttigt?

RAG er nyttigt, fordi det gør AI-svar mere konkrete og mindre baseret på gæt.

Hvis en chatbot skal svare på spørgsmål om en virksomheds returpolitik, skal den ikke bare svare ud fra generel viden. Den skal bruge den rigtige politik.

Det samme gælder en portfolio-chatbot. Hvis nogen spørger om mine projekter, skal chatbotten svare ud fra det indhold, der faktisk ligger på min side.

RAG gør det også lettere at opdatere viden. Man behøver ikke træne modellen igen, hver gang der kommer nyt indhold. Man opdaterer bare datakilden.

## Hvor kan man bruge det?

RAG kan bruges mange steder, hvor AI skal svare ud fra specifik information.

Eksempler:

1. Chat med PDF'er.
2. Kundeservice baseret på dokumentation.
3. Interne virksomhedschatbots.
4. Portfolio-chatbots.
5. Hjælp til teknisk dokumentation.

Et simpelt eksempel er en app, hvor brugeren uploader en PDF og bagefter kan stille spørgsmål til den. Systemet finder de relevante dele af PDF'en og bruger dem i svaret.

## Hvad har jeg lært?

Jeg har lært, at RAG ikke bare er "AI plus dokumenter". Kvaliteten afhænger meget af, hvordan data bliver gjort klar.

Dokumenter skal deles op i mindre tekststykker, og de skal kunne findes igen på en god måde. Hvis systemet henter de forkerte tekststykker, bliver svaret også dårligere.

Jeg har også lært, at RAG ofte er mere praktisk end fine-tuning, hvis problemet handler om viden. Det er nemmere at opdatere dokumenter end at træne en model igen.

## Konklusion

RAG er en stærk teknik, når en AI-model skal arbejde med specifik og opdateret viden.

For mig er det interessant, fordi det kombinerer flere områder fra softwareudvikling: backend, datahåndtering, søgning, API'er og promptdesign.

Den vigtigste læring er, at gode AI-svar starter med gode data. Hvis data er relevante og opdaterede, bliver systemet meget mere brugbart.
