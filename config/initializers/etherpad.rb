$ether = EtherpadLite.connect(:local,
  File.new(File.join(Rails.root, "etherpad-lite/APIKEY.txt")))
