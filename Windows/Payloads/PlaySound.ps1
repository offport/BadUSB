Function Speak-Text($Text) { Add-Type -AssemblyName System.speech; $TTS = New-Object System.Speech.Synthesis.SpeechSynthesizer; $TTS.Speak($Text) }
Speak-Text "You have been Hacked, Now you have to do everything we ask you."
Exit
