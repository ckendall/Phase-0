<<<<<<< HEAD
class VirusPredictor
  
=begin
Creates the following instance vars '@state', '@population', and '@population_density'.
=end
  
=======
# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

>>>>>>> e03bde7fccc0d5c38c20e240bd01133650e93915
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

<<<<<<< HEAD
=begin
Calls two methods, 'predicted_deaths' and 'speed_of_spread'.
=end

  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  
  def test
    puts ((@population_density / 50)).floor
  end
=begin
Sets all methods below 'private' as not readable to other Classes. Private methods cannot be called outside of the Class, only methods from within the Class may call private methods.
=end
  
  private

=begin
Takes three arguments 'population_density', 'population', and 'state'. Returns number_of_deaths based on 'population_density' and 'population'.
=end
  
  def predicted_deaths
    predicted deaths is solely based on population density
    
    array = [200, 150, 100, 50, 1]
    # array_of_decimals = [.4, .3, .2, .1, .05]
    
      index = 0
      
      while index < array.length
        if @population_density >= array[index]
          @number_of_deaths = (@population * (@population_density / 50)).floor
        end
        index += 1
      end
      
    
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end
    
=======
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
>>>>>>> e03bde7fccc0d5c38c20e240bd01133650e93915

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
<<<<<<< HEAD
  
=begin
Takes two two arguments 'population_density' and 'state'. Calculates 'speed' based on 'population_density'.
=end
  
  def speed_of_spread #in months
=======

  def speed_of_spread(population_density, state) #in months
>>>>>>> e03bde7fccc0d5c38c20e240bd01133650e93915
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

<<<<<<< HEAD
def states
  STATE_DATA.each do |state, value|
    state = VirusPredictor.new(state, STATE_DATA[state]   [:population_density], STATE_DATA[state][:population])
    state.virus_effects
  end
end

states

=======
>>>>>>> e03bde7fccc0d5c38c20e240bd01133650e93915
#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


<<<<<<< HEAD
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.test
# #
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.test
#
#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects
#
#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects
#

#=======================================================================
# Reflection Section

#What are the differences between the two different hash syntaxes shown in the state_data file?
# What does require_relative do? How is it different from require?
# What are some ways to iterate through a hash?
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# What concept did you most solidify in this challenge?
=======
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section
>>>>>>> e03bde7fccc0d5c38c20e240bd01133650e93915
