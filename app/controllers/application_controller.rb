class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
    "/"
  end

  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end

# ["abalone", "abboccato", "ABC protein", "abdug", "abetalipoproteinaemia", "abiu", "abocada", "absinthe", "absolute alcohol", "AC", "acarbose", "acaricides", "ACAT", "accelase", "accelerated freeze drying", "Acceptable Daily Intake", "accoub", "accra", "accuncciata", "ACE", "acerola", "acesulphames", "acetanisole", "acetic acid", "acetoacetate", "Acetobacter", "aceto dolce", "acetoin", "acetomel", "acetomenaphthone", "acetone", "acetylated monoglyceride", "acetylcholine", "acetylene", "acha", "achalasia", "achene", "ACH index", "achira", "achlorhydria", "acholia", "achromotricia", "acid", "acid, gastric", "acid drops", "acid foods", "acidity", "acidity regulators", "acid number", "acidophilin", "acidophilus therapy", "acidosis", "acids, fruit", "acidulants", "ackee", "acne", "acorn", "ACP", "acrodermatitis enteropathica", "acrodynia", "acrolein", "ACTH", "actin", "actinidain", "activators", "actometer", "acute phase proteins", "acyl CoA", "acylglycerol", "ADA", "adai", "adaptogens", "additive", "adenine", "adenosine", "adequate intake", "ADHD", "ADI", "adipectomy", "adipocyte", "adipocytokines", "adiponectin", "adiponutrin", "adipophilin", "adipose tissue", "adipose tissue, brown", "adiposis", "adiposity", "adipostat", "adipsia", "adipsin", "adjunct culture", "adlay", "ad libitum", "adoucir", "ADP", "adrenaline", "adsorbent", "adsorption", "adulteration"]