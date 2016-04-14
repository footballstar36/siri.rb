PATTERNS = [
  ["youngCUB", "young cub"],
  ["siri", "jarvis"],
  ["delon", "bat man"],
  ["kalob", "boy wonder"],
  ["skye" , "wonder woman"],
  [/y/, 'j'],
  [/ll/, 'y'],
  [/i/, 'y'],
  
]

def preprocess(msg)
  PATTERNS.each do |pat|
    if pat[1].respond_to? :call
      msg.gsub!(pat[0], &pat[1])
    else
      msg.gsub!(pat[0], pat[1])
    end
  end
  msg
end

def ask(msg)
  say msg
  gets.chomp
end

def say(msg)
  puts msg
  system("say", preprocess(msg))
end

say "hello i am siri 2.0 or as most of you mite know me youngCUB i will be monitorizing your childrens monitors!"
name = ask "What is your name?"
say "hello #{name} nice to finally meet you"
say = ask "what would you like me to do first?"
say "ok i will do that for you right now #{name}"
say "I'm #{say}ing..."
say "dinner is ready"

