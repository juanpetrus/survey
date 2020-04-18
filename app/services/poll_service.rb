# frozen_string_literal: true

class PollService
  def self.parametros(dados)
    @options = Option.where(poll_id: dados.id)
    array = []
    @options.each do |option|
      option = {
          option_id: option.id,
          option_description: option.option_description
      }
      array << option
    end
    poll = {
        poll_id: dados.id,
        poll_description: dados.poll_description,
        options: array
    }
    return poll
  end
end