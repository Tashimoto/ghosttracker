module GhostsHelper
  def features_to_string(ghost)
    string = ""
    ghost.features.each do |f|
      string += f + ", "
    end
    string
  end
end
