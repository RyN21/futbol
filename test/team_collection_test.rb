require './test/test_helper'
require './lib/team'
require './lib/team_collection'


class TeamCollectionTest < Minitest::Test

  def setup
    @team_collection = TeamCollection.new('./data/teams.csv')
    @team = @team_collection.teams_array.first
  end

  def test_it_exists
    assert_instance_of TeamCollection, @team_collection
  end

  def test_it_has_attributes
    assert_instance_of Array, @team_collection.teams_array
  end

  def test_it_can_create_teams_from_csv
    assert_instance_of Team, @team
    assert_equal "1", @team.team_id
    assert_equal "Atlanta United", @team.team_name
  end

  def test_it_returns_total_number_of_teams
    assert_equal 32, @team_collection.total_number_of_teams
  end

end
