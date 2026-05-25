---
title: "AI-dreven applikation med eksternt API"
date: 2026-05-25
draft: false
tags: ["AI", "LLM", "API", "Udvikling"]
---

# AI-dreven applikation med eksternt API

## Emnet

Jeg har arbejdet med at lave en AI-dreven applikation, hvor en LLM ikke kun svarer ud fra sin egen viden, men også kan bruge data fra et eksternt API.

Ideen er, at brugeren kan stille et spørgsmål i naturligt sprog, og applikationen kan hente relevante oplysninger fra et API, før den giver et svar. På den måde bliver AI'en mere brugbar, fordi den kan arbejde med aktuelle eller specifikke data.

Et simpelt flow kan se sådan ud:

```text
Brugerens spørgsmål
    -> applikation
    -> eksternt API
    -> data sendes til LLM
    -> svar til brugeren
```

Det vigtige er, at LLM'en ikke står alene. Den får hjælp fra et almindeligt API-kald, så svaret kan blive mere præcist.

## Hvorfor er det nyttigt?

Det er nyttigt, fordi en LLM ikke altid har adgang til den nyeste eller mest konkrete information.

Hvis man for eksempel bygger en app, der skal svare på lagerstatus, vejret, produkter, priser eller andre data der ændrer sig, kan modellen ikke bare gætte. Den skal hente data fra et sted, der faktisk ved det.

Ved at kombinere en LLM med et eksternt API kan man få det bedste fra begge verdener. API'et leverer data, og LLM'en gør svaret nemmere at forstå for brugeren.

Det gør applikationen mere praktisk end en almindelig chatbot, fordi den kan handle på rigtig information i stedet for kun at formulere generelle svar.

## Hvor kan man bruge det?

Denne type løsning kan bruges mange steder.

Eksempler:

1. En chatbot der henter lagerstatus fra et API.
2. En rejseapp der henter fly- eller hoteldata.
3. En vejrassistent der kalder et vejr-API.
4. En supportbot der slår ordredata op.
5. En intern assistent der henter data fra virksomhedens systemer.

I mit eget projekt med Engestofte Gods kunne samme ide bruges til at lade en AI-assistent hente data fra systemets backend. Den kunne for eksempel forklare en indkøbsliste eller svare på spørgsmål om lageret ud fra data, der kommer fra API'et.

## Hvad har jeg lært?

Jeg har lært, at det ikke er nok bare at kalde en LLM og håbe på et godt svar.

Man skal tænke over, hvilke data modellen får, og hvor de data kommer fra. Hvis API'et returnerer rodet eller forkert data, bliver AI-svaret også dårligere.

Jeg har også lært, at ansvarsfordelingen er vigtig. API'et skal levere fakta, mens LLM'en skal hjælpe med at forklare dem. Hvis man lader modellen opfinde tal eller resultater, bliver systemet mindre pålideligt.

En anden ting jeg har lært er, at fejl skal håndteres ordentligt. Et API kan være nede, returnere tomme resultater eller sende data i et format, man ikke forventer. Derfor skal applikationen kunne give et fornuftigt svar, selv når API-kaldet fejler.

## Konklusion

En AI-dreven applikation bliver meget mere interessant, når den kan bruge et eksternt API.

LLM'en er god til at forstå spørgsmål og formulere svar, men API'et er bedre til at levere konkrete data. Når de to ting kombineres rigtigt, kan man bygge løsninger, der både føles intelligente og er baseret på rigtig information.

For mig er den vigtigste læring, at AI skal kobles sammen med almindelig softwareudvikling. Det handler ikke kun om prompts, men også om API'er, data, fejlhåndtering og en klar ansvarsfordeling mellem systemets dele.
