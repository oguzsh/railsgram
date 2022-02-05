# frozen_string_literal: true

module ApplicationHelper
  def user(uuid)
    User.find_by(id: uuid)
  end
end
