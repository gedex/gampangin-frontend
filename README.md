gampangin-frontend
==================

My frontend stack to shorten my frontend development workflow.

## How to use

Make sure you have ruby installed (tested by me on v1.9.3).

Install all gems:
~~~
bundle
~~~

Run `guard`:
~~~
bundle exec guard
~~~

## Motivation behind

My common mockup html-only development workflow:

1. Create less files
2. Compile it into css
3. Create html files for each static page (duplicate header, sidebar, and footer)
4. Refresh browser each time html and css updated

Can this be shortened?

Fortunately there's [Guard](https://github.com/guard/guard) that help me watching any modified files
and refresh the browser.

## Similar to

I've found tools below helpful, but too overkill for me:

* [Serve](http://get-serve.com)
* [Middleman](http://middlemanapp.com)

## Todo

* Apply templating language (e.g., erb) for
  partial and layout
* Once template (in view folder) done, remove
  any *.html files in public folder

## License

Released under MIT License.

## Author

[Akeda Bagus](https://github.com/gedex)
