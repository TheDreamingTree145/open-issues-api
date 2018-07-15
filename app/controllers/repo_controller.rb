class RepoController < ApplicationController
  
  def start 
    Repo.get_repos
  end
end
