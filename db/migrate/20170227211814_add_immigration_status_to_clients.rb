class AddImmigrationStatusToClients < ActiveRecord::Migration[5.0]
  def change
    add_column :raids_clients, :immigration_status_at_time_of_raid, :string

    add_column :raids, :response_to_medical_issues, :text, comment: 'How did they respond to any medical issues that were brought up?'
    add_column :raids, :response_to_childcare_issues, :text, comment: 'How did they respond to any childcare issues that were brought up?'
    add_column :raids, :other_arrests, :text, comment: 'Were other arrests made during the raid?'
    add_column :raids, :asked_others_for_documents_or_fingerprints, :text, comment: 'Did they ask other people for documents or fingerprints?'
  end
end
