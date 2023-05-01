=begin
# Chapter 5 - Recreating the beep synth

## The second version of our new beep (Ruby)

We need to add this class definition to the file `synthifo.rb` under the path `app/server/ruby/lib/sonicpi/synths`

The name needs to be variable (ie no spaces or funky characters please).

=end

class MySecondSynth < SonicPiSynth
  def name
    "My Beep 2"
  end

  def introduced
    Version.new(5,0,0)
  end

  def synth_name
    "mysecondsynth"
  end

  def doc
    "my sine wave"
  end

  def arg_defaults
    {
      :note => 52,
      :amp => 1,
      :pan => 0,
      :duration => 1, # WATCH OUT - this is not called `sustain`
    }
  end
end

# We also need to add this line to the `BaseInfo` class under the variable name `@@synth_infos`

:mysecondsynth => MySecondSynth.new,
