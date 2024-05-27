#import "../lib.typ": *

= Tree List

== Default
#tree-list[
  - 1
    - 1.1
      - 1.1.1
    - 1.2
      - 1.2.1
      - 1.2.2
        - 1.2.2.1
  - 2
  - 3
    - 3.1
      - 3.1.1
    - 3.2
]

== Custom
#text(
  red,
  tree-list(
    marker: text(blue)[├── ],
    last-marker: text(aqua)[└── ],
    indent: text(teal)[│#h(1.5em)],
    empty-indent: h(2em),
  )[
    - 1
      - 1.1
        - 1.1.1
      - 1.2
        - 1.2.1
        - 1.2.2
          - 1.2.2.1
    - 2
    - 3
      - 3.1
        - 3.1.1
      - 3.2
  ],
)

== Using show rule
#show list: tree-list
#set text(font: "DejaVu Sans Mono")

root_folder\
- sub-folder
  - 1-1
    - 1.1.1 -
  - 1.2
    - 1.2.1
    - 1.2.2
- 2