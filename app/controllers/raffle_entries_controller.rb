class RaffleEntriesController < ApplicationController

  def create
    raffle = RaffleEntry.new(first_name: params[:first_name], last_name: params[:last_name] ,email: params[:email] ,phone: params[:phone] ,exercise: params[:exercise] ,repetitions: params[:repetitions]  )
    raffle.save ? flash[:success] = "Raffle Entry Saved" : flash[:error] = "#{raffle.errors.full_messages.first}"
    redirect_to '/'
  end

  def new

  end

  def index
    @scores = RaffleEntry.where("exercise <> ''").map {|n| n.repetitions.to_i}.sum
    @pushups = RaffleEntry.where(exercise: "Push-Ups").map {|n| n.repetitions.to_i}.sum
    @pullups = RaffleEntry.where(exercise: "Pull-Ups").map {|n| n.repetitions.to_i}.sum
    @situps = RaffleEntry.where(exercise: "Sit-Ups").map {|n| n.repetitions.to_i}.sum

  end

end
