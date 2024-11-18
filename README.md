# updated docker environment for laravel development

## makefile
this is pretty much going to enable shortcuts. You can see the definitions in there. For 'up', you'd run ```make up```

Ex.
docker exec -it <container name> bash #enters shell of container
side note - current version uses alpine, the default shell of which is 'ash', rather than bash.

once we're in the shell, run ``` composer create-project laravel/laravel . ```

refer to the makefile for more shortcuts, and expand at your convenience.
Once everything is installed and ready, make sure to update the laravel .env appropriately, and then run your migrations
'make setup' should take care of everything as is for a new project, aside from the database stuff.
