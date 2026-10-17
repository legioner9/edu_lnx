# https://sketch.stately.ai

```mermaid
---
config:
  theme: 'base'
  themeVariables:
    primaryColor: '#fff'
    primaryTextColor: '#000'
    secondaryColor: '#fff'
    tertiaryColor: '#fff'
title: Кнопка со счётчиком коротких и длинных нажатий
---
stateDiagram-v2
direction LR
    [*] --> Ready
    Ready --> Pressed : PRESS
    Pressed --> Holded : HOLD
    Pressed --> Just_Released : RELEASE
    Holded --> Just_Released : RELEASE
    Just_Released --> Ready : WAIT
    
classDef red fill:#cb0008,stroke:#cb0008,color:#fefbe5;
classDef yellow fill:#f3ac06,stroke:#f3ac06,color:#2b291f;
classDef cyan fill:#08849b,stroke:#08849b,color:#fefbe5;
classDef green fill:#9a9a00,stroke:#9a9a00,color:#fefbe5;

class Ready green
class Pressed red
class Holded yellow
class Just_Released cyan

```

# uv :: https://docs.astral.sh/uv/getting-started/installation/#standalone-installer

## https://astral.sh/uv/install.sh

# https://github.com/vgmakeev/xstate-mermaid/tree/main

    $ uvx --from "git+https://github.com/vgmakeev/xstate-mermaid.git" xstate-dsl mermaid2xstate mermaid.md -o xstate.json