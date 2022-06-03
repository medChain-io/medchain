desc "Fill the database tables with some sample data"
task sample_data: :environment do
  starting = Time.now

  UserType.delete_all
  MedwalletAccount.delete_all
  Payer.delete_all
  PayerPlan.delete_all
  Provider.delete_all
  Status.delete_all
  TreatmentAction.delete_all
  FeeSchedule.delete_all
  CarePlan.delete_all



  user_type = UserType.create(
    id: 1,
    name: "Payer"
  )
  user_type = UserType.create(
    id: 2,
    name: "Provider"
  )
  user_type = UserType.create(
    id: 3,
    name: "Patient"
  )

  status = Status.create(
    id: 1,
    name: "Draft"
  )
  status = Status.create(
    id: 2,
    name: "Pending Patient Approval"
  )
  status = Status.create(
    id: 3,
    name: "Signed - Pending Visit"
  )
  status = Status.create(
    id: 4,
    name: "Complete"
  )
  status = Status.create(
    id: 5,
    name: "On Hold"
  )
  status = Status.create(
    id: 6,
    name: "Canceled"
  )


  people = Array.new(10) do
    {
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
    }
  end

  people << { first_name: "Alice", last_name: "Smith" }
  people << { first_name: "Will", last_name: "Smith" }
  people << { first_name: "Carol", last_name: "Smith" }
  people << { first_name: "Doug", last_name: "Smith" }

  people.each do |person|
    username = person.fetch(:first_name).downcase

    user = MedwalletAccount.create(

      email: "#{username}@example.com",
      password: "password",
      username: username.downcase,
      profile_picture: "https://robohash.org/#{username}",
      user_type_id: UserType.distinct.pluck(:id).sample,
    )

    # p user.errors.full_messages
  end

  users = MedwalletAccount.all

  users.each do |user|
    if user.user_type_id == 1
      payer_create = Payer.create(
        name: "#{Faker::Company.name} Insurance",
        medwallet_id: user.id,
      )
    end
    if user.user_type_id == 2
      provider_create = Provider.create(
        name: "Dr. #{Faker::Name.first_name}",
        medwallet_id: user.id,
      )
    end
  end

  10.times do
    payer_plan_create = PayerPlan.create(
      name: "Plan #{Faker::Color.color_name}",
      payer_id: Payer.distinct.pluck(:id).sample,
    )
  end

  users.each do |user|
    if user.user_type_id == 3
      patient_create = Patient.create(
        name: "#{Faker::Name.first_name} #{Faker::Name.last_name}",
        dob: Faker::Date.between(from: "1950-01-01", to: "2005-12-25"),
        ssn: Faker::IDNumber.invalid,
        payer_plan_id: PayerPlan.distinct.pluck(:id).sample,
        medwallet_id: user.id,
      )
      p patient_create.errors.full_messages
    end
  end

  10.times do 
    treatment_action = TreatmentAction.create(
      action: Faker::Hobby.activity,
      code: Faker::IDNumber.spanish_foreign_citizen_number
    )
  end

  payer_plans = PayerPlan.all
  providers = Provider.all
  treatment_actions = TreatmentAction.all

  payer_plans.each do |payer_plan|
    providers.each do |provider|
      treatment_actions.each do |treatment_action|
        fee_schedule = FeeSchedule.create(
          action: "To be deleted, included in treatment action",
          cost: Faker::Number.decimal(l_digits: 2),
          payer_plan_id: payer_plan.id,
          provider_id: provider.id,
          treatment_id: treatment_action.id
        )
      end
    end
  end


  patients = Patient.all

  patients.each do |patient|
    gen_date = Faker::Date.between(from: '2022-06-01', to: '2022-06-08')
    10.times do 
      care_plan = CarePlan.create(
        patient_id: patient.id,
        date: gen_date,
        status_id: Status.distinct.pluck(:id).sample,
        fee_schedule_id: FeeSchedule.distinct.pluck(:id).sample
        # if gen_date > '2022-06-03'
        #   date: gen_date,
        #   status_id: rand(1...3),
        #   fee_schedule_id: FeeSchedule.distinct.pluck(:id).sample
        # else  
        #   date: gen_date,
        #   status_id: rand(4...6),
        #   fee_schedule_id: FeeSchedule.distinct.pluck(:id).sample
        # end
      )
      p care_plan.errors.full_messages
    end
  end
  


  #       p first_user_follow_request.errors.full_messages
  #     end

  #     if rand < 0.75
  #       second_user_follow_request = second_user.sent_follow_requests.create(
  #         recipient: first_user,
  #         status: FollowRequest.statuses.values.sample
  #       )

  #       p second_user_follow_request.errors.full_messages
  #     end
  #   end
  # end

  # users.each do |user|
  #   rand(15).times do
  #     photo = user.own_photos.create(
  #       caption: Faker::Quote.jack_handey,
  #       image: "/#{rand(1..10)}.jpeg"
  #     )

  #     p photo.errors.full_messages

  #     user.followers.each do |follower|
  #       if rand < 0.5
  #         photo.fans << follower
  #       end

  #       if rand < 0.25
  #         comment = photo.comments.create(
  #           body: Faker::Quote.jack_handey,
  #           author: follower
  #         )

  #         p comment.errors.full_messages
  #       end
  #     end
  #   end
  # end

  # # Make sure alice doesn't follow bob, bob is private, and bob is in alice's discover
  # alice = User.find_by(username: "alice")
  # bob = User.find_by(username: "bob")
  # bob.update(private: true)
  # follow_request = FollowRequest.find_by(sender: alice, recipient: bob)
  # follow_request.destroy
  # photo = bob.own_photos.first
  # photo.fans << alice.leaders.first

  ending = Time.now
  p "It took #{(ending - starting).to_i} seconds to create sample data."
  p "There are now #{MedwalletAccount.count} users."
  p "There are now #{UserType.count} user types."
  # p "There are now #{Photo.count} photos."
  # p "There are now #{Like.count} likes."
  # p "There are now #{Comment.count} comments."
end
