class PagesController < ApplicationController
    def about
        @title = "About Job Notes";
        @content = "This is about the jobby jobs eh";
    end
end
