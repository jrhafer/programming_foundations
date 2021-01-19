def initiate_lights(n)
  lights_hash = {}
  (1..n).each { |num| lights_hash[num] = 'off' }
  lights_hash
end

def toggle_lights(n)
  lights = initiate_lights(n)
  multiple = 1
  loop do
    lights.keys.each do |key|
      if key % multiple == 0
        lights[key] == 'off' ? lights[key] = 'on' : lights[key] = 'off'
      end
    end
    multiple += 1
    break if multiple > n
  end
  lights
end

def lights_toggled_on(n)
  lights = toggle_lights(n)
  results = []
  lights.each do |num, switch|
    if switch == 'on'
      results << num
    end
  end
  results
end

p lights_toggled_on(5) == [1, 4]
p lights_toggled_on(10) == [1, 4, 9]
p lights_toggled_on(100) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
