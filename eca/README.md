# ecasound multitracking
my ecasound chainsetup for easy cli audio multitracking.

## install

```
$ git clone https://github.com/torsbos/ecasound.git 
$ cd ecasound/eca && mkdir -p t m
```

## install - optional
adding aliases will make the workflow easier

make aliases for recording and mixing. for example:

```
$ alias er='ecasound -c -s' 
$ alias em='ecasound -s x* && play m/*' 
```

## usage

to start recording:

```
$ er 1*
```

or:

```
$ ecasound -c -s 1*
```

this will enter the interactive mode for recording track 1.
to start audio processing:

```
> t
```

to stop:


```
> s
```

to reset the playhead:

```
> setpos 0
```

or:

```
> rw 999
```

you can repeat this as many times as you wish.
only the last recording is saved.

to exit, type:

```
> q
```

to start multitracking, replace the `1*` with `2*`, `3*` etc. when invoking the `er` command.

(you could theoretically add as many tracks as your system can handle,
for now i have added 4 tracks).

all tracks are saved in `eca/t`

to mix down to one file and play:

```
$ em
```

or:

```
$ ecasound -s x* && play m/*
```

mixes are saved in `eca/m`

## dependencies
`ecasound`

`sox` - for `play` command

`pipewire-jack`  - for low latency recording
