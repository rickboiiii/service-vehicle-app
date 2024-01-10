
#Setup
###Install following
- Local server of your choosing, laragon, wamp, xamp etc.
- PHP 8.2.8
- Composer
- GitBash

###Starting up local instance 
- Go to servers website hosting folder
- Open GitBash, and type following commands:
- `git clone https://github.com/rickboiiii/service-vehicle-app.git`
- `cd service-vehicle-app`
- `composer install`
- `cp .env.example .env`
- `php artisan key:generate`
- Go to /storage/database_dumps
- Find the latest dump, and import it to you local database
- After that edit `.env` file accordingly, to your database needs
- To start project open GitBash and write `php artisan serve`

#Code writing
- Keep it RESTful
- KISS always
- Write TODOs, comments when needed
- Function names MUST be meaningful, example: addition(int $a, int $b) NOT randomAbc($a, $c)
- Clean code, clean head
- Write sensible commit messages, example: finished vehicle model refactoring NOT done W win win

##General TODOs
- Implement CSRF, Authentication
- Create reusable BLADE components
- Implement SCSS, custom UI/UX
- Clean up and create reusable functions

###Credits
- Database design @rickboiiii
- Project design @rickboiiii

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
