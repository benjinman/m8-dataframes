# Exercise 7: Husky Football 2015 Season
# Read in the Husky Football 2015 game data into a variable called `husky.games.2015`
husky.games.2015 <- huskies_2015 # manually imported dataset
# Create a vector of the teams that the Huskies played against during that season
# Call this vector `not.huskies`. You'll need to convert this column to a vector
not.huskies <- husky.games.2015[['opponent']]
# Create a vector of the their final scores for the games
# Call this variable `husky.scores`
husky.scores <- husky.games.2015[['uw_score']]
# Create 2 variables called `rushing.yards` and `passing.yards` to represent the yards the Huskies rushed and passed
rushing.yards <- husky.games.2015[['rushing_yards']]
passing.yards <- husky.games.2015[['passing_yards']]
# Create a variabled called `combined.yards` that is the total yardage of the Huskies for each game
combined.yards <- rushing.yards + passing.yards
# What is the score of the game where the Huskies had the most combined yards?
highest.combined.yards.score <- c(husky.scores[which.max(combined.yards)], husky.games.2015[['opponent_score']][which.max(combined.yards)])
# Write a function `MostYardsScore` that takes in a dataframe parameter `games` and returns a descriptive sentence
# about the game that was played that had the most yards scored in it.
# Take note of the steps from above including the opposing team, score, and date the game was played
MostYardsScore <- function(games) {
  game.combined.yards <- games[['rushing_yards']] + games[['passing_yards']]
  game.number <- which.max(game.combined.yards)
  
  date <- games[['date']][game.number]
  opponent <- games[['opponent']][game.number]
  uw.score <- games[['uw_score']][game.number]
  opponent.score <- games[['opponent_score']][game.number]
  
  return(paste("on", date, "UW scored their most yards this season against", opponent, "with a final score of", uw.score, "to", opponent.score))
}
# What was the highest yardage game so far this season?
# Hint: Read in the dataset titled `huskies_2016.csv` and save it as a variable
MostYardsScore(huskies_2016)
