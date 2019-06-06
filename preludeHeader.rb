
# Welcome to Sonic Pi v3.1

# To run with two midi devices connected,
# set output flag to 2. To run with built-in
# synth library, set output flag to 1.

output = 1

if output == 1
  define :play_note do |synth, note, duration|
    if synth == 1
      use_synth :tech_saws
    else if synth == 2
      use_synth :square
    end
  end
  play note, release: duration
  sleep duration
end
else
  define :play_note do |channel, note, duration|
    midi_note_on note, channel: channel
    sleep duration
    midi_note_off note, channel: channel
  end
end

define :arpeggio1 do
  play_note 1, :c5, 0.25
  play_note 1, :d5, 0.25
  play_note 1, :ef5, 0.25
  play_note 1, :g5, 0.25
  play_note 1, :c6, 0.25
  play_note 1, :d6, 0.25
  play_note 1, :ef6, 0.25
  play_note 1, :g6, 0.25
  play_note 1, :c7, 0.25
  play_note 1, :d7, 0.25
  play_note 1, :ef7, 0.25
  play_note 1, :g7, 0.25
end

define :arpeggio2 do
  play_note 1, :c5, 0.25
  play_note 1, :d5, 0.25
  play_note 1, :fs5, 0.25
  play_note 1, :a5, 0.25
  play_note 1, :c6, 0.25
  play_note 1, :d6, 0.25
  play_note 1, :fs6, 0.25
  play_note 1, :a6, 0.25
  play_note 1, :c7, 0.25
  play_note 1, :d7, 0.25
  play_note 1, :fs7, 0.25
  play_note 1, :a7, 0.25
end

define :arpeggio3 do
  play_note 1, :c5, 0.25
  play_note 1, :d5, 0.25
  play_note 1, :f5, 0.25
  play_note 1, :af5, 0.25
  play_note 1, :c6, 0.25
  play_note 1, :d6, 0.25
  play_note 1, :f6, 0.25
  play_note 1, :af6, 0.25
  play_note 1, :c7, 0.25
  play_note 1, :d7, 0.25
  play_note 1, :f7, 0.25
  play_note 1, :af7, 0.25
end

define :arpeggio4 do
  play_note 1, :b4, 0.25
  play_note 1, :d5, 0.25
  play_note 1, :f5, 0.25
  play_note 1, :af5, 0.25
  play_note 1, :b5, 0.25
  play_note 1, :d6, 0.25
  play_note 1, :f6, 0.25
  play_note 1, :af6, 0.25
  play_note 1, :b6, 0.25
  play_note 1, :d7, 0.25
  play_note 1, :f7, 0.25
  play_note 1, :af7, 0.25
end

define :pattern_gs_ds do
  play_note 1, :gs4, 0.5
  play_note 1, :ds5, 0.5
  play_note 1, :gs5, 0.5
  play_note 1, :ds6, 0.5
  play_note 1, :gs6, 0.5
  play_note 1, :ds7, 0.5
end

define :pattern_g_c do
  play_note 1, :g4, 0.5
  play_note 1, :c5, 0.5
  play_note 1, :g5, 0.5
  play_note 1, :c6, 0.5
  play_note 1, :g6, 0.5
  play_note 1, :c7, 0.5
end

define :pattern_b_g do
  play_note 1, :b4, 0.5
  play_note 1, :g5, 0.5
  play_note 1, :b5, 0.5
  play_note 1, :g6, 0.5
  play_note 1, :b6, 0.5
  play_note 1, :g7, 0.5
end
