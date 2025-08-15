require "sdl"


SDL.init(SDL::Init::VIDEO)
at_exit { SDL.quit }

window = SDL::Window.new("SDL tutorial", 640, 480)
renderer = SDL::Renderer.new(window)

width, height = window.size


loop do
  event = SDL::Event.wait
  case event
  when SDL::Event::Quit
    break
  when SDL::Event::Keyboard
    if event.mod.lctrl? && event.sym.q?
      break
    end
    if event.sym.w?
      puts("w")
    end
    if event.sym.a?
      puts("a")
    end 
    if event.sym.s?
      puts("s")
    end
    if event.sym.d?
      puts("d")
    end
  end

  
  # draw black window
  renderer.draw_color = SDL::Color[0, 0, 0, 255]
  renderer.clear


  renderer.present
end