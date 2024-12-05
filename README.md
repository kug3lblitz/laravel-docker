# updated docker environment for laravel development

Dockerized laravel development environment. Took a while to get it right, but just spin it up and follow the steps
in this readme, and everything should work just fine.

## makefile
this is pretty much going to enable shortcuts. You can see the definitions in there. For 'up', you'd run ```make up```

Ex.
docker exec -it <container name> bash #enters shell of container
side note - current version uses alpine, the default shell of which is 'ash', rather than bash.

refer to the makefile for more shortcuts, and expand at your convenience.
Once everything is installed and ready, make sure to update the laravel .env appropriately, and then run your migrations
'make setup' should take care of everything as is for a new project, aside from the database stuff.

now, start the container/build them, and enter the shell of the laravel container.
once we're in the shell, run ``` composer create-project laravel/laravel . ```
To serve the thing, cd into the laravel directory, and run ```php artisan serve --host=0.0.0.0 --port=8000```
The site should now be accessible at localhost:8000, per the mapping in docker-compose.yml

Finally, in the laravel .env file, make sure this is what you've got for the db section:
```
DB_CONNECTION=mysql
DB_HOST=db
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=root
DB_PASSWORD=root
```

Verify using ```docker network ls``` if you are having issues

If you need to import an sql dump, you can do so easily from the container shell like so:
``` mysql -h db -u root -p laravel < file.sql```
If you have multiple containers or docker instances, sub ```db``` for the appropriate service name specified in docker-compose.
