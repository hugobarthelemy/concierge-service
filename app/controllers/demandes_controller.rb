class DemandesController < ApplicationController
  # /demandes
  def index
    @pending_demandes = Demande.where(status: "pending")
      .sort_by { |i| i.created_at }
    @accepted_demandes = Demande.where(status: "accepted")
      .sort_by { |i| i.created_at }
    @done_demandes = Demande.where(status: "done")
      .sort_by { |i| i.created_at }
  end

  # /demandes/new
  def new
    @demande = Demande.new
  end

  def create
    Demande.create(demande_params)
    redirect_to demandes_path
  end

  def show
    @demande = Demande.find(params[:id])
  end

  private

  def demande_params
    params.require(:demande)
          .permit(:created_at,
                  :updated_at,
                  :applicant_id,
                  :heading_id,
                  :title,
                  :description,
                  :status,
                  :volunteer_ids,
                  :text)
  end
end
