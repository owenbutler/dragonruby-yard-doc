module GTK
  class Args
    # @return [GTK::Inputs]
    attr_reader :inputs

    # Hash that contains audio sources that are playing.
    #
    # Sounds that don’t specify looping: true will be removed automatically from the hash after the playback ends. Looping sounds or sounds that should stop early must be removed manually.
    #
    # When you assign a hash to an audio output, a :length key will be added to the hash on the following tick. This will tell you the duration of the audio file in seconds (float).
    #
    # ## volume
    #
    # You can globally control the volume for all audio using args.audio.volume.
    #
    # ## One time sounds
    # ```
    # args.audio[:coin] = { input: "sounds/coin.wav" }
    # ```
    # ## Looping sounds
    # ```
    # args.audio[:bg_music] = { input: "sounds/bg-music.ogg", looping: true }
    # ```
    #
    # see : [additional audio properties](https://docs.dragonruby.org/#/api/audio?id=setting-additional-audio-properties)
    #
    # @return [Hash]
    attr_reader :audio
  end
end
