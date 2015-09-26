class PagesController < ApplicationController
  def home
    foo = Foobar.new "baz"
    @baz = foo.bar :cat, sat: :dat, dat: :sat
  end

  def stringify
    # if :name.blank? and :adjective.blank?
    #   @text = "You are nothing!"
    # elsif :name.blank?
    #   @text = "You are " + :adjective + "!"
    # elsif :adjective.blank?
    #   @text = :name + " is nothing!"
    # else
    #   @text = :name + " is " + :adjective + "!"
    @name = params[:name]
    @adjective = params[:adjective]
    # @text = :name 
  end

  def age
  end

  def person
    @name = params[:name]
    @age = params[:age]
    person = Person.new @name, @age
    @intro = person.introduce
    @yob = person.birth_year
    @nickname = person.nickname
  end
end
