# Learning 2D Game Development Together

A parent-and-child curriculum for building an original 2D platformer in Godot,
while learning programming, game design, and responsible AI use.

## Starting point and recommendation

This curriculum is for a parent and an 11-year-old who has some experience with
Scratch and is ready to try text-based programming.

**Start with Godot. No additional engine or programming course is required first.**
Scratch experience gives you a useful foundation: events, conditions, variables,
and repeated actions. The next step is learning how to express those ideas in
GDScript and organize them in Godot.

Build a Mario-inspired platformer, not a recreation of the entire Mario game.
Use an original character, world, and levels with familiar mechanics: running,
jumping, collecting things, avoiding hazards, and reaching a goal. Use original
or appropriately licensed art and sound rather than copying Nintendo assets.

The first finish line is:

> Someone else can open our game, play one short level, lose, retry, and win.

A small finished game is a better learning experience than an ambitious game
that never becomes playable.

## Why Godot fits

| Strength | What it means for us |
|---|---|
| Free and open source | No engine subscription needed to get started. |
| Dedicated 2D tools | A good match for platformers without starting with 3D complexity. |
| Integrated editor, debugger, and animation tools | Fewer separate tools to learn initially. |
| GDScript | An approachable text-based language with lightweight, Python-like syntax. It is not Python. |
| Reusable scenes | Build one collectible or enemy, then use it throughout the game. |

The main challenge is learning text-based programming and an engine at the same
time. Nodes, scenes, collision shapes, coordinates, and scripts can initially
feel like several unrelated subjects. Introduce them through small experiments,
not a long vocabulary lesson.

Godot's official first 2D game tutorial assumes some programming experience.
Scratch provides relevant experience, but typing syntax and reading errors will
still be new skills to practice.

## Should we explore another avenue first?

There is no necessary intermediate step between Scratch and Godot. Avoid spending
weeks comparing tools instead of making something.

| Avenue | When it is worth exploring | Recommendation for us |
|---|---|---|
| Godot with GDScript | We want a full game engine and are ready to learn text-based code. | Best starting choice for this project. |
| MakeCode Arcade | We want a gentler bridge from blocks to text and enjoy small retro games. | Optional short detour if typing and syntax overwhelm the fun. |
| GDevelop or Construct | We want to prioritize game design using visual event systems rather than writing much text-based code. | Valid alternatives, but not prerequisites for Godot. Check current licensing and free-tier limits before choosing. |
| Python with Pygame | We want programming to be the main subject and are happy to assemble more game infrastructure ourselves. | An alternative path, not preparation required for GDScript. |
| Unity with C# | We specifically want Unity or C# and accept a broader tooling and language learning curve. | Save for a later project unless there is a specific reason to choose it now. |
| Paper level design | We want to explore challenges, rules, and player choices without wrestling with the editor. | Spend 15-20 minutes here, then build the idea in Godot. |

Before committing to the full curriculum, try two short Godot sessions: make an
object respond to input, then build a tiny collectible game. If he enjoys changing
the behavior and investigating what happens, continue. If syntax is the main
obstacle, slow down and use smaller scripts before changing tools.

## Bridge from Scratch to Godot

Use familiar Scratch ideas as anchors, while explaining that the systems are not
exactly equivalent.

| Familiar Scratch idea | Godot connection |
|---|---|
| A sprite with behavior | A reusable scene composed of nodes, often with a script attached. |
| When green flag clicked | `_ready()` is a useful starting analogy, though it runs when a node is ready in the scene tree, not whenever the game is restarted conceptually. |
| Forever | Engine callbacks such as `_process(delta)` and `_physics_process(delta)` run repeatedly; do not replace them with a blocking forever loop. |
| If / else | `if` / `else` conditions in GDScript. |
| Variables | Script variables that store values such as speed or score. |
| My Blocks | Functions that name a reusable action. |
| Broadcast messages | Signals provide event notifications, with explicit connections to receivers. |
| Clones | Instantiating reusable scenes. |

One important coordinate difference: Godot's default 2D coordinates increase to
the right and downward, unlike Scratch's upward-positive vertical axis. Make this
a visible experiment rather than something to memorize.

## The learning approach: build, explain, change, test

We are learning three subjects:

1. **Programming:** expressing rules clearly.
2. **Game development:** making those rules feel good to play.
3. **AI literacy:** asking useful questions and checking answers.

Our central rule:

> AI can help us understand or build something, but we must be able to explain
> it, change it, and test it before calling it ours.

This avoids both extremes: forbidding useful help and letting AI generate a game
neither of us understands.

## Suggested rhythm

- Two sessions per week, about 45-60 minutes each.
- Roughly 12-16 weeks, with permission to take longer or move faster.
- Treat milestones as checkpoints, not deadlines or one-session assignments.
- Move quickly through concepts he already understands from Scratch.
- End each session with a visible result or a useful discovery.

| Time | Activity |
|---|---|
| 5 minutes | Play the current game and choose one small goal. |
| 5 minutes | Predict what needs to happen; draw or describe it. |
| 25-30 minutes | Build and experiment. |
| 10 minutes | Test, including trying to break it. |
| 5 minutes | Explain what changed and save a checkpoint. |

On frustrating days, make a silly level or adjust jump settings instead of
forcing another new concept.

## Phase 1: Learn how to make things happen

| Milestone | Build together | Concepts | Evidence of learning |
|---|---|---|---|
| 1. Our first interactive scene | A character or shape that appears and responds to a button. | Editor, scenes, nodes, running a project, input. | He changes one property and predicts the result. |
| 2. A tiny complete game | Move around one screen collecting three stars; show "You win!" | Variables, functions, conditions, coordinates, signals as event notifications. | He explains how the game knows all three stars were collected. |

The tiny game gives us an early experience of finishing and separates basic
programming from platformer physics. Keep it brief if the concepts are familiar;
the goal is transferring Scratch knowledge, not repeating an entire beginner
programming course.

Introduce concepts when needed: a score is a reason to learn variables; winning
is a reason to learn conditions.

## Phase 2: Build the platformer's core

| Milestone | Build together | Concepts | Evidence of learning |
|---|---|---|---|
| 3. Walking and solid ground | A placeholder player moves left and right on a floor. | Input actions, velocity, collision shapes, physics updates. | He adds another platform without copying the whole scene. |
| 4. Jumping and falling | Gravity and a jump that works only from the ground. | Positive/negative directions, conditions, grounded state. | He explains why the player cannot jump forever in midair. |
| 5. Make movement feel good | Experiment with speed, jump strength, and gravity. | Hypotheses, changing one variable at a time, cause and effect. | He chooses settings and explains what feels better about them. |
| 6. A short scrolling level | Platforms, gaps, a following camera, and a goal. | Level layout, camera behavior, reusable pieces; tilemaps when useful. | He builds a route we can complete without instructions. |

Keep art simple through this phase. A colored rectangle that jumps well is more
valuable than an elaborate character with confusing behavior.

## Phase 3: Turn movement into a game

| Milestone | Build together | Concepts | Evidence of learning |
|---|---|---|---|
| 7. Collectibles and a score display | Reusable stars or gems that disappear when collected. | Scene instances, signals, UI updates. | One item adds exactly one point, even if the player overlaps it for several frames. |
| 8. Hazards and retrying | Spikes or pits return the player to a safe starting point. | Game state, reset behavior, debugging. | He states what resets after a loss and verifies it. |
| 9. One predictable enemy | A simple enemy patrols between two points. | Direction, conditions, simple states. | He explains when and why the enemy turns around. |
| 10. A complete game loop | Start, play, lose/retry, win, play again. | Scene transitions, state ownership, consistent resets. | Another person completes the loop without either of us operating the editor. |

For the enemy, start with "touching it makes you retry." Stomping enemies,
knockback, health, and invulnerability can wait.

## Phase 4: Make it ours and share it

| Milestone | Build together | Concepts | Evidence of learning |
|---|---|---|---|
| 11. Personality and playtesting | Original art or licensed assets, a few sounds, and clearer feedback. | Animation, asset permissions, readable design, observing players. | He observes a tester without coaching and makes one evidence-based improvement. |
| 12. Release and teach-back | Export a desktop build, add controls and credits, and hold a family play session. | Packaging, regression testing, explaining a system. | The exported game works outside the editor, and he explains one feature from input to result. |

Keep these out of the first release:

- Multiplayer.
- Inventories and shops.
- Procedural generation.
- Complicated combat.
- Multiple worlds.

After finishing, choose **one** expansion: double jump, moving platforms, a
checkpoint, or a second level.

## How to use AI effectively

### Use a hint ladder

When stuck, climb only as far as necessary:

1. Describe what we expected and what actually happened.
2. Read the error and inspect the relevant code.
3. Ask AI for a question or hint.
4. Ask for an explanation or pseudocode.
5. Ask for a small code example.
6. Request a complete small feature only when we can review it together.

Do not turn this into a lengthy struggle before help is allowed. A few focused
minutes is enough.

### Prompts to practice

**For learning:**

> We are learning Godot using GDScript. We want the player to jump only when
> standing on the ground. Don't give us code yet. Ask us one question that helps
> us work out the condition.

**For connecting to Scratch:**

> I have used variables and if blocks in Scratch. Explain how this short
> GDScript uses those same ideas, and point out what is different. Then give me
> one small change to try myself.

**For debugging:**

> We expected one point per star, but sometimes get several. Here is the
> relevant script. Give us one likely explanation and one experiment to check
> it. Don't rewrite the whole script.

**For understanding:**

> Explain this function in plain language. Then give us a small change to make
> ourselves to show we understand it.

**For checking an answer:**

> Which parts of your suggestion depend on our Godot version? Tell us what to
> verify in the built-in documentation.

Always include the installed Godot version when asking technical questions.
AI can mix APIs from different versions or invent methods.

### Three checks for AI-generated code

Before keeping it:

- **Explain:** What does the important logic do?
- **Modify:** Can he intentionally change its behavior?
- **Verify:** Does it work in normal and awkward cases?

He does not need to memorize engine boilerplate. Understanding behavior and
knowing how to investigate unfamiliar parts is the goal.

Occasionally do an AI-free remix: add a different collectible, change a rule, or
rebuild a familiar interaction. That reveals what has stuck.

### Supervision and privacy

Because he is 11, keep AI use parent-supervised and follow the service's age
requirements. Do not assume a child can have an account merely because a parent
is present. Avoid sharing personal information, credentials, or identifiable
information about other children.

## The parent's role: partner, not rescue service

Let him own meaningful decisions:

- Character and theme.
- Level layout.
- Which movement settings feel best.
- One feature to add after the first release.

The parent can initially own installation, backups, and difficult documentation,
but should narrate the investigation rather than silently fixing everything.

Alternate roles:

- **Driver:** operates the computer.
- **Navigator:** asks questions, reads, and suggests tests.

Make sure he gets substantial driver time. When stuck, try "What could we check?"
before taking the keyboard.

At the end of each session, both answer:

> Show me one thing you understand now that you didn't understand before.

## Practical setup

- Use a current stable Godot 4 release, the standard build, and GDScript.
- Start with Godot's built-in script editor; add external tooling later if useful.
- Use placeholder shapes or clearly licensed assets.
- Share one computer if possible.
- Save a checkpoint after each session: Git if the parent already knows it,
  otherwise simple project backups initially.
- Use tutorials that match the installed engine version.
- Keep the same engine version during the initial project unless a specific fix
  requires an update.

## First session: Make something respond

1. Each person sketches a possible original hero.
2. Pick a temporary game name.
3. Create a 2D project and put a visible object on screen.
4. Run it.
5. Make a button change its position or appearance.
6. Let him change a value and predict the effect.
7. Connect the behavior to a familiar Scratch idea.
8. Save the project and demonstrate it to someone.

Do not aim to finish jumping in session one. The win is:

> We made the computer follow our rule.

If this is easy, move straight into the tiny collectible game.

## Recommended reference path

1. [Godot introduction](https://docs.godotengine.org/en/stable/getting_started/introduction/introduction_to_godot.html):
   understand what the engine provides.
2. [Godot step-by-step introduction](https://docs.godotengine.org/en/stable/getting_started/step_by_step/index.html):
   learn scenes, nodes, and scripting.
3. [Your first 2D game](https://docs.godotengine.org/en/stable/getting_started/first_2d_game/index.html):
   a structured complete-game example once the basics are familiar. This is a
   dodge game, not a platformer; use it for transferable concepts rather than as
   a direct platformer recipe.

The stable documentation links track the current stable release. Select the
documentation version matching the installed editor if they differ.

Optional alternative paths:

- [MakeCode Arcade](https://arcade.makecode.com/)
- [GDevelop](https://gdevelop.io/)
- [Construct](https://www.construct.net/)
- [Pygame](https://www.pygame.org/)

Use one main learning path rather than collecting many competing tutorials.

## Definition of success

The project succeeds when:

- Someone else can launch the exported game and understand the controls.
- The player can complete one short level.
- Losing, retrying, winning, and restarting behave consistently.
- Collectibles score exactly once each.
- Credits acknowledge any assets that require attribution.
- He can explain, modify, and test at least one feature without AI doing it for him.
- Both of us want to make something else together.

Measure success by what he can explain, experiment with, and create independently,
not by how closely the game resembles Mario or how much code AI produces.
