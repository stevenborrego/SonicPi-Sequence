# Welcome to Sonic Pi v3.1

use_bpm 140

# Use this play_note function when no midi devices
# are connected:

define :play_note do |synth, note, duration|
  
  if synth == 1
    use_synth :tech_saws
  else if synth == 2
    use_synth :square
  end
end
play note
sleep duration
end

# To run with midi devices, comment out the above play_note
# function and use this one:

#define :play_note do |channel, note, duration|
#midi_note_on channel: channel, note
#sleep duration
#midi_all_notes_off
#end


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
    play_note 2, :f2, 3
    play_note 2, :cs2, 3
    play_note 2, :d2, 3
    play_note 2, :g2, 3
  end
end

define :melody do
  in_thread do
    sleep 26.5
    
    #arpeggio
    
    3.times do
      
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
    end
  end
  in_thread do
    
    # melody
    
    sleep 38.5
    play_note 1, :g4, 2
    play_note 1, :af4, 0.5
    play_note 1, :g4, 0.5
    play_note 1, :fs4, 2
    play_note 1, :d4, 0.5
    play_note 1, :ef4, 0.5
    play_note 1, :f4, 1.5
    play_note 1, :af4, 0.5
    play_note 1, :g4, 0.5
    play_note 1, :f4, 0.5
    play_note 1, :e4, 1
    play_note 1, :f4, 1
    play_note 1, :g4, 1
    play_note 1, :c5, 0.75
    play_note 1, :f4, 1.75
    play_note 1, :c4, 0.5
    play_note 1, :f4, 1.5
    play_note 1, :ef4, 0.5
    play_note 1, :d4, 0.5
    play_note 1, :c4, 0.5
    play_note 1, :d4, 2.5
    play_note 1, :c4, 0.5
    play_note 1, :d4, 2
    play_note 1, :ef4, 0.5
    play_note 1, :f4, 0.5
    
  end
  in_thread do
    
    # bass
    
    sleep 38.5
    6.times do
      play_note 2, :c2, 3
    end
  end
   
end

define :bridge do
  in_thread do
    sleep 62.5
    
    pattern_gs_ds
    pattern_g_c
    pattern_gs_ds
    pattern_b_g
    pattern_gs_ds
    pattern_g_c
    pattern_gs_ds
    
  end
  in_thread do
    sleep 62.5
    
    #bass
    
    6.times do
      play_note 2, :gs2, 0.5
    end
    6.times do
      play_note 2, :ds2, 0.5
    end
    6.times do
      play_note 2, :cs2, 0.5
    end
    4.times do
      play_note 2, :d2, 0.5
    end
    play_note 2, :g2, 0.5
    play_note 2, :g2, 0.5
    6.times do
      play_note 2, :gs2, 0.5
    end
    6.times do
      play_note 2, :ds2, 0.5
    end
    6.times do
      play_note 2, :cs2, 0.5
    end
    4.times do
      play_note 2, :d2, 0.5
    end
    play_note 2, :g2, 0.5
    play_note 2, :f2, 0.5
    
    12.times do
      play_note 2, :ds2, 1
    end
    9.times do
      play_note 2, :ds2, 0.5
      play_note 2, :ds3, 0.5
    end
    play_note 2, :cs2, 6
    
  end
end

intro
melody
bridge

