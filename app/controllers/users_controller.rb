class UsersController < ApplicationController
        def new
          @user = User.new
          @patient = Patient.new

        end

      def create

        @user = User.create(user_params)
        #
        # if @user.is_patient
        #   @user.profile = Patient.create(patient_params)
        # else
        #   @user.profile = Practitioner.create(practitioner_params)
        # end

        if @user.valid?
          @user.save
          redirect_to clinics_path
        else
          flash[:errors] = @user.errors.full_messages
          redirect_to new_user_path
        end
      end

      def show
        @user = User.find(params[:id])
      end
# checks id/ filters what the patient or the practitioner can see
# practitioners can see their appointments and can see their patients functionality
# patients can only see their own details and appointments only



      def edit
        authorized_for(params[:id])
        @user = User.find(params[:id])
      end

      def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to @user
      end

      def destroy
        @current_user = session[:current_user_id] =nil
        redirect_to user_path
      end

      private
      def user_params
        params.require(:user).permit(:username, :password, :profile_type)
      end

      def patient_params
        params.require(:patient).permit(:name, :age, :years_experience, :phone_number_ext, :department_id)
      end

      def practitioner_params
        params.require(:patient).permit(:name, :gender, :address, :medical_history, :clinic_id)
      end
end
