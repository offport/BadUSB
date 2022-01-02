Function Speak-Text($Text) { Add-Type -AssemblyName System.speech; $TTS = New-Object System.Speech.Synthesis.SpeechSynthesizer; $TTS.Speak($Text) }
Speak-Text "Taybe. Taybe. Jiba."
Exit
