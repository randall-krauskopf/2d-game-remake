# Session 1: Make a Character Obey Your Rules

**Curriculum:** [Phase 1, Milestone 1](./curriculum.md#phase-1-learn-how-to-make-things-happen)  
**Length:** 45-60 minutes  
**Mission:** Put a character on screen and make it move when you press Space.  
**Big idea:** "Code is a set of rules we can predict, change, and test."

No jumping, gravity, collisions, or finished artwork yet.

## Before the session: parent setup

Do this beforehand so installation does not consume his enthusiasm:

- Install and open a stable Godot 4 release.
- Use the standard version with GDScript.
- Check that you can create and run an empty project.
- Keep AI available through a parent-operated account that meets the service's
  age requirements.

Your son should do most of the clicking and typing during the session. You are
the navigator, not the person who takes over whenever something goes wrong.

## 1. Choose a mission (5 minutes)

Start with:

> Today we're going to make something appear, then teach it one rule.
> You'll get to change the rule.

Let him choose a temporary character idea: robot, potato, spaceship, or whatever
sounds fun. Use Godot's icon as its temporary costume.

Ask him to predict:

- How might we tell the computer where to put it?
- What Scratch blocks would make a sprite move when Space is pressed?

This makes his existing knowledge the starting point.

## 2. Build the scene (10-15 minutes)

Together:

1. Create a project.
2. Choose **2D Scene**, giving you a `Node2D` root.
3. Rename the root `Main`.
4. Drag the project's `icon.svg` from the FileSystem dock into the 2D view.
   It should become a `Sprite2D` child.
5. Rename that child `Hero`.
6. With `Hero` selected, find **Transform > Position** in the Inspector.
   Set it to approximately **x: 200, y: 200**.
7. Save the scene as `main.tscn`.
8. Run the project. If prompted for a main scene, select the current scene.

Explain only these three terms:

| Term | Working explanation |
|---|---|
| Node | One building block with a particular job. |
| Scene | A saved arrangement of building blocks. |
| Inspector | Where we change the selected block's properties. |

**Checkpoint:** He can point to the character in the running game and find its
node in the editor.

## 3. Give the character one rule (10-15 minutes)

Stop the game. Select `Hero` and attach a GDScript. If Godot offers a script
template, disable it or replace its contents with:

```gdscript
extends Sprite2D

func _process(_delta: float) -> void:
    if Input.is_action_just_pressed("ui_accept"):
        position.x += 40
```

Run the game, click the game view so it receives keyboard input, and press Space.

Godot's built-in `ui_accept` action normally includes Space and Enter. You can
inspect it under **Project Settings > Input Map**, enabling
**Show Built-in Actions** if needed.

Explain it in plain language:

- `extends Sprite2D`: This script belongs to a sprite.
- `_process`: Godot checks this rule every frame.
- `if`: Only do the indented instruction when the condition is true.
- `is_action_just_pressed`: React once when the button is pressed.
- `position.x += 40`: Move 40 pixels to the right.

The `_delta` parameter is information Godot supplies about elapsed time. We are
not using it for this one-step movement, so there is no need to teach
frame-independent motion today.

**Scratch connection:** This produces behavior similar to "when Space pressed,
change x by 40," although Godot checks the input inside a repeating callback.

## 4. Run prediction experiments (10 minutes)

Before each change, have him predict what will happen. Change only one thing at
a time.

| Experiment | Change | What to investigate |
|---|---|---|
| Bigger steps | Change `40` to `80`. | Does each press move twice as far? |
| Reverse direction | Change the amount to `-40`. | Which way is negative x? |
| Move vertically | Change `position.x` to `position.y`. | Does positive y move up or down? |

For the vertical experiment, use a positive amount to test the question in the
table. Positive y moves downward in Godot, unlike Scratch.

Stop and rerun between experiments. Do not assume changes made while running
will update the game.

## 5. Use AI as a tutor (5 minutes)

After he has made a prediction, try:

> I'm learning Godot 4 and have used Scratch. This line says
> `position.x += 40`. Don't write new code. Ask me one question that checks
> whether I understand it.

Then evaluate the AI together:

- Was the explanation understandable?
- Did it follow the instruction not to write code?
- Does its explanation match what you observed?

**The lesson:** AI's answer is something to check, not automatically accept.

## 6. Finish with a demonstration (5 minutes)

Have him demonstrate:

- [ ] The character appears when the project runs.
- [ ] One Space press moves it one step.
- [ ] Holding Space does not keep moving it.
- [ ] He can deliberately change its direction or distance.
- [ ] He can explain the movement line in his own words.

Save a checkpoint, then each answer:

> What did I predict, and what actually happened?

## If something goes wrong

Treat these as investigations, not failures:

- **Nothing moves:** Check keyboard focus, script attachment, and debugger errors.
- **Character disappears after several presses:** It may have moved off screen.
  Stop and rerun.
- **Code will not run:** Read the first error together; check spelling, the colon,
  and indentation.

## If he finishes early

Challenge him to make Space move right and Left Arrow move left, using the
existing condition as a model and the built-in `ui_left` action. Let him attempt
it before asking AI.

## What success looks like

The success criterion is not how much code you write. It is whether he experiences:

> I understood a rule, changed it intentionally, and proved what it does.
