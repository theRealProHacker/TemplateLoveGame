# A Simple Template For A Game Created With Love2D

This template covers the most common needs. It includes

1. A statemachine
2. A timer wrapper
3. A class wrapper

These wrappers are not from myself but from Matthias Richter (MIT License). The full license is in each document and his GitHub-Account is linked here: [vrld - Matthias Richter <img src="https://avatars.githubusercontent.com/u/156469?v=4" width="20" height="20">](https://github.com/vrld). He even has an own website (https://vrld.org)  
He also has some really cool other tools for lua and love but these three are just the most basic ones you really need to use. 

Furthermore, the template already modularizes utilities like sounds, images and fonts. But also the most common states menu, playing, paused and ended. 

Additionally there is a helpers file with nice, handy helpers that will surely save you some time and the requires file which handle the requirements. The goal ist to keep the main file as neat as possible and to extradite everything as much as possible. 

## Tutorial

To get started you should add a background image. Drop it into the images folder. And then load it in the sprite.lua file just like in the example. You can also write a function if you want to add a lot of images. But for this sprite sheets might be just what you need.

In the menu.lua file. In the draw method now draw the image:

```
love.graphics.draw(images['background'])
```

This supposes you called the image 'background'

Now if you run the code, you can see your image. 

More details will follow. (I just don't know when)

Good luck coding!
