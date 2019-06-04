# Welcome to Sonic Pi v3.1

use_bpm 80

define :play_note do |channel, note, duration|
  midi_note_on note, channel: channel
  sleep duration
  midi_note_off note, channel: channel
end

define :triad do |channel, note1, note2, note3, duration|
  midi_note_on note1, channel: channel, rate: duration
  midi_note_on note2, channel: channel, rate: duration
  midi_note_on note3, channel: channel, rate: duration
  sleep duration
  midi_all_notes_off
end
define :intro do
  in_thread do
    play_note 1, :a4, 1
    play_note 1, :e5, 1.75
    play_note 1, :g5, 0.5
    play_note 1, :fs5, 0.5
    play_note 1, :d5, 0.5
    play_note 1, :e5, 3
    play_note 1, :a4, 1
    play_note 1, :e5, 1.75
    play_note 1, :g5, 0.5
    play_note 1, :fs5, 0.5
    play_note 1, :d5, 0.5
    play_note 1, :e5, 2
    
    play_note 1, :g5, 0.25
    play_note 1, :a5, 0.25
    play_note 1, :c6, 0.25
    play_note 1, :d6, 0.25
    
    play_note 1, :e6, 2
    play_note 1, :d6, 0.25
    play_note 1, :c6, 0.25
    play_note 1, :b5, 0.25
    play_note 1, :g5, 0.25
    play_note 1, :c6, 2
    play_note 1, :bf5, 0.25
    play_note 1, :af5, 0.25
    play_note 1, :g5, 0.25
    play_note 1, :f5, 0.25
    play_note 1, :g5, 3
    
  end
  in_thread do
    sleep 14.5
    play_note 2, :f, 3
    play_note 2, :cs, 3
    play_note 2, :d, 3
    play_note 2, :g, 3
  end
end

#define :argeggio do |channel, octave, duration|
#3.times do
#play_note channel: channel,
#end
#end


define :melody do
  #in_thread do
  #sleep 26.5
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
  #end
end
define :bass do
  in_thread do
    play_note 2, :g, 2
    play_note 2, :af, 0.5
    play_note 2, :g, 0.5
    play_note 2, :fs, 2
    play_note 2, :d, 0.5
    play_note 2, :ef, 0.5
    play_note 2, :f, 1.5
    play_note 2, :af, 0.5
    play_note 2, :g, 0.5
    play_note 2, :f, 0.5
    play_note 2, :e, 1
    play_note 2, :f, 1
    play_note 2, :g, 1
    play_note 2, :c, 0.75
    play_note 2, :f, 1.75
    play_note 2, :c, 0.5
    play_note 2, :f, 1.5
    play_note 2, :ef, 0.5
    play_note 2, :d, 0.5
    play_note 2, :c, 0.5
    play_note 2, :d, 2.5
    play_note 2, :c, 0.5
    play_note 2, :d, 2
    play_note 2, :ef, 0.5
    play_note 2, :f, 0.5
    
  end
end

intro
melody
bass
melody
melody


