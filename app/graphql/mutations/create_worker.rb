module Mutations
  class CreateWorker < BaseMutation
    argument :input, Types::CreateWorkerInput, required: true

    type Types::WorkerType

    def resolve(input:)
      create_worker = Worker.new(input.to_h)

      if create_worker.save!
        create_worker
      else
        execution_error(error_data: create_worker.errors)
      end
    end
  end
end
