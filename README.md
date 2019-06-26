# papyrus-script
The version `1.0.0` release pre-dates version controlling for this project.
* https://github.com/joelday/papyrus-lang/issues/57
* https://github.com/scrivener07/papyrus-script/releases/tag/v1.0.0

### Describe
This is a feature request for a mini papyrus code base sample to be provided.
Im writing this up as a feature request because a couple individuals have asked me about this.
I already have a sort of testing routine Ive been using with a mini-codebase sample for exactly that. I use it to have a common and consistent code base between version smoke tests. I can polish this code up and figure out the best distribution method later.

### Ideas
* Add a `VSCodeTestCell` for a controlled testing environment in game.
* Add samples for static context scripts (globals).
* Add samples for ObjectReferences and Actors.
* Add samples for Quests.
* Add samples which verify language features are working correctly.

### Details
The code base looks something like this at the moment and still needs some polish.
```
E:\Studio\Bethesda\Projects\Papyrus\papyrus-script\Data
|   VSCode.esp
|
\---Scripts
    |   VSCodeActor.pex
    |   VSCodeQuest.pex
    |
    +---Source
    |   \---VSCode
    |       |   VSCode.ppj
    |       |   VSCodeActor.psc
    |       |   VSCodeQuest.psc
    |       |
    |       \---VSCode
    |           |   Data.psc
    |           |   Globals.psc
    |           |
    |           +---Actors
    |           |       Sample.psc
    |           |       SampleComplex.psc
    |           |
    |           \---Quests
    |                   Sample.psc
    |                   SampleComplex.psc
    |
    \---VSCode
        |   Data.pex
        |   Globals.pex
        |
        +---Actors
        |       Sample.pex
        |       SampleComplex.pex
        |
        \---Quests
                Sample.pex
                SampleComplex.pex
```
