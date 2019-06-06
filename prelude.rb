# To turn off specific parts of instruments
# set desired flag to false

intro_melody = true
intro_harmony1 = true
intro_harmony2 = true
intro_bass = true
body_arpeggio = true
body_melody = true
body_bass = true
bridge_melody = true
bridge_arpeggios = true
bridge_bass = true
major_melody = true
major_harmony = true
major_bass = true

define :intro do
  in_thread do
    # Intro Melody
    if intro_melody
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
      play_note 1, :b3, 1
      play_note 1, :c4, 1
      play_note 1, :d4, 2
    end
  end
  in_thread do
    sleep 13.75
    # Intro Harmony 1
    if intro_harmony1
      play_note 1, :e4, 0.25
      play_note 1, :fs4, 0.25
      play_note 1, :a4, 0.25
      play_note 1, :b4, 0.25
      play_note 1, :c4, 2
      play_note 1, :b4, 0.25
      play_note 1, :a4, 0.25
      play_note 1, :g4, 0.25
      play_note 1, :f4, 0.25
      play_note 1, :gs4, 2
      play_note 1, :g4, 0.25
      play_note 1, :f4, 0.25
      play_note 1, :ds4, 0.25
      play_note 1, :cs4, 0.25
    end
  end
  in_thread do
    sleep 15
    # Intro Harmony 2
    if intro_harmony2
      play_note 1, :e4, 0.5
      play_note 1, :a3, 0.5
      play_note 1, :e4, 0.5
      sleep 1.5
      play_note 1, :cs4, 0.5
      play_note 1, :f4, 0.5
      play_note 1, :cs4, 0.5
      sleep 1
      play_note 1, :c4, 0.5
      play_note 1, :g3, 0.5
      play_note 1, :c4, 0.5
      play_note 1, :g3, 0.5
      play_note 1, :c4, 0.5
      play_note 1, :d4, 0.25
      play_note 1, :c4, 0.25
      play_note 1, :g3, 1
      play_note 1, :a3, 1
      play_note 1, :b3, 2
    else
      sleep 2.5
    end
  end
  in_thread do
    sleep 14
    # Intro Bass
    if intro_bass
      play_note 2, :gs2, 0.5
      play_note 2, :f2, 3
      play_note 2, :cs2, 3
      play_note 2, :d2, 3
      play_note 2, :g2, 3
    end
  end
end

define :body do
  in_thread do
    sleep 26.5
    # Body Arpeggio
    if body_arpeggio
      5.times do
        arpeggio1
        arpeggio2
        arpeggio3
        arpeggio4
      end
    end
  end
  in_thread do
    sleep 37.5
    # Body Melody
    if body_melody
      2.times do
        play_note 1, :ef4, 0.5
        play_note 1, :f4, 0.5
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
      end
    end
  end
  in_thread do
    sleep 38.5
    # Body Bass
    if body_bass
      6.times do
        play_note 2, :c2, 3
      end
      play_note 2, :g2, 3
      play_note 2, :g1, 3
      6.times do
        play_note 2, :c2, 2
        play_note 2, :c1, 1
      end
      play_note 2, :g2, 2
      play_note 2, :d3, 1
      play_note 2, :g3, 2
    end
  end
end

define :bridge do
  in_thread do
    sleep 86.5
    # Bridge Arpeggios
    if bridge_arpeggios
      pattern_gs_ds
      pattern_g_c
      pattern_gs_ds
      pattern_b_g
      pattern_gs_ds
      pattern_g_c
      pattern_gs_ds
    end
  end
  in_thread do
    sleep 86
    # Bridge Melody
    if bridge_melody
      2.times do
        play_note 1, :ds3, 0.25
        play_note 1, :f3, 0.25
        play_note 1, :ds3, 0.25
        play_note 1, :d3, 0.25
        play_note 1, :c3, 2
      end
      play_note 1, :c3, 0.25
      play_note 1, :d3, 0.25
      play_note 1, :ds3, 1
      play_note 1, :cs3, 1
      play_note 1, :gs3, 1
      play_note 1, :g3, 2.5
      2.times do
        play_note 1, :ds4, 0.25
        play_note 1, :f4, 0.25
        play_note 1, :ds4, 0.25
        play_note 1, :d4, 0.25
        play_note 1, :c4, 2
      end
      play_note 1, :c4, 0.25
      play_note 1, :d4, 0.25
      play_note 1, :ds4, 1
      play_note 1, :cs4, 1
      play_note 1, :gs4, 1
      play_note 1, :g4, 2.5
    end
    # major melody
    if major_melody
      play_note 1, :gs3, 0.25
      play_note 1, :f3, 0.25
      2.times do
        play_note 1, :g4, 0.25
        play_note 1, :gs4, 0.25
        play_note 1, :g4, 0.25
        play_note 1, :gs4, 0.25
        play_note 1, :as4, 1.5
        play_note 1, :ds4, 0.5
        play_note 1, :as4, 1.5
        play_note 1, :c5, 0.25
        play_note 1, :as4, 0.25
        play_note 1, :gs4, 0.5
        play_note 1, :g4, 1.25
        play_note 1, :gs4, 0.25
        play_note 1, :gs4, 1.5
        play_note 1, :f4, 0.25
        play_note 1, :gs4, 0.25
        play_note 1, :gs4, 1
        play_note 1, :g4, 1
        play_note 1, :f4, 1
      end
    end
  end
  in_thread do
    sleep 107.5
    # Major Harmony
    if major_harmony
      play_note 1, :c4, 0.25
      sleep 0.25
      play_note 1, :d4, 0.25
      sleep 0.75
      play_note 1, :b4, 0.25
      play_note 1, :a4, 0.25
      play_note 1, :b4, 0.5
      sleep 0.5
      play_note 1, :ds4, 0.5
      play_note 1, :as4, 0.5
      play_note 1, :g4, 0.5
      play_note 1, :as4, 0.5
      play_note 1, :ds4, 1
      play_note 1, :f4, 0.5
      play_note 1, :cs4, 0.5
      play_note 1, :f4, 0.5
      play_note 1, :gs4, 0.25
      play_note 1, :g4, 0.25
      play_note 1, :f4, 0.5
      play_note 1, :ds4, 0.25
      play_note 1, :d4, 0.25
      play_note 1, :ds4, 0.5
      play_note 1, :c4, 0.5
      play_note 1, :gs3, 0.5
      play_note 1, :c4, 0.5
      play_note 1, :ds4, 0.5
      play_note 1, :c4, 0.5
      play_note 1, :f4, 0.5
      play_note 1, :b3, 0.5
      play_note 1, :ds4, 0.5
      play_note 1, :b3, 0.5
      play_note 1, :cs4, 0.5
      play_note 1, :b3, 0.5
      2.times do
        play_note 1, :ds4, 0.25
        play_note 1, :as3, 0.25
        play_note 1, :g3, 0.25
        play_note 1, :as3, 0.25
      end
      play_note 1, :ds4, 0.25
      play_note 1, :as3, 0.25
      play_note 1, :ds4, 0.25
      play_note 1, :g4, 0.25
      play_note 1, :f4, 0.25
      play_note 1, :cs4, 0.25
      play_note 1, :gs3, 0.25
      play_note 1, :cs4, 0.25
      play_note 1, :f4, 0.25
      play_note 1, :cs4, 0.25
      play_note 1, :gs4, 0.25
      play_note 1, :g4, 0.25
      play_note 1, :f4, 0.5
      play_note 1, :ds4, 0.25
      play_note 1, :d4, 0.25
      play_note 1, :ds4, 0.25
      play_note 1, :c4, 0.25
      play_note 1, :gs3, 0.25
      play_note 1, :c4, 0.25
      play_note 1, :ds4, 0.25
      play_note 1, :c4, 0.25
      play_note 1, :gs3, 0.25
      play_note 1, :c4, 0.25
      play_note 1, :c4, 0.5
      play_note 1, :cs4, 0.25
      play_note 1, :c4, 0.25
      play_note 1, :b3, 6
    else
      sleep 1.5
    end
  end
  in_thread do
    sleep 85.5
    # Bridge Bass
    if bridge_bass
      2.times do
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
      end
    end
    # Major Bass
    if major_bass
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
end

