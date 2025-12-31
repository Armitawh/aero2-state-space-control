
Load Aero 2 Model & Parameters
Run this section first to load the Aero 2 parameters including the state space A, B, C and D matrices into the workspace
% Load aero 2 parameters- DO NOT MODIFY
clear
aero2_parameters

% 1-DoF Aero 2 state space model - DO NOT MODIFY
A = [0 1; -0.5520 -0.0776];
B = [0; 0.0020];
C = [1 0];
D = 0;



Section Modelling
Task 1
Use this section to complete the steps for Task 1 from the Question set.
% Uncomment this section, Set the input voltage and then run this section
input_voltage =7.5 ;

Now run this section to plot the step response from DC motor 0
% Plot data from running q_aero2_rotor_step.mlx model 
load("DataRotorStep.mat");
t   =   DataRotorStep(1,:); % time (seconds)
Vin =   DataRotorStep(2,:); % input voltage (Volts)
sp  =   DataRotorStep(3,:); % speed (rad/s)
figure(1)
plot(t,sp) % plot the speed response
xlabel('Time(s)');
ylabel('Speed(rad/s)');
ylim([-10 200]);
title("Speed response to " + sprintf("%d", input_voltage) + " volts step input")

figure(2)
plot(t,Vin) % plot the voltage 
xlabel('Time(s)');
ylabel('Voltage(Volts)');
ylim([-1 11])
title(sprintf('%d', input_voltage) + " volts step input")



State Feedback
Use this section to complete the steps for Tasks 2 to 5 from the Question set.
Task 2
This first subsection is for Task 2
% Compute gain K given pole locations. Uncomment the code below to find K
p1=[-0.3916+1.61j,-0.3916-1.61j]
K = place(A,B,p1)
Nbar = 1;

% Extract elements of K matrix to submit in blackboard
k1 = K(1)
k2 = K(2)



Task 3
This subsection is for Task 3 - Case 1 Simulation. 
Make sure to run this section before running any of the simulink models for Task 3
% Make sure to run this section before running the s_aero2_state_feedback.slx simulink model
logging = 't3'; % used for logging data correctly
simTime = 50; % Do not modify

Now Open and run the s_aero2_state_feedback.slx Simulink model before running this section
% Plot data from running s_aero2_state_feedback.slx model 
load("ssfback_t3.mat");
do_plot(ssfback_t3, 'con', 'State feedback T3 case 1 Simulation')

This subsection is for Task 3 - Case 2 Physical Aero 2
Now Open and run the q_aero2_state_feedback.slx Simulink model before running this section
% Plot data from running q_aero2_state_feedback.slx model 
load("qsfback_t3.mat");
do_plot(qsfback_t3, 'con', 'State feedback T3 case 2 Aero2 Hardware')



Task 4
This subsection is for Task 4
% Compute gain K given pole locations. Uncomment the code below to find K
% K = ; 
p=[-1.1625+0.63j, -1.1625-0.63j]
K=place(A,B,p)
Nbar = 1;

% Extract elements of K matrix for blackboard
k1 = K(1)
k2 = K(2)



Task 5
This subsection is for Task 5 - Case 1 Simulation. 
Make sure to run this section before running the simulink models for Task 5
% Make sure to run this section before running the s_aero2_state_feedback.slx simulink model
clear logging;
logging = 't5'; % used for logging data correctly

Now Open and run the s_aero2_state_feedback.slx Simulink model before running this section
% Plot data from running s_aero2_state_feedback.slx model 
load("ssfback_t5.mat");
do_plot(ssfback_t5, 'con','State feedback T5 case 1 Simulation')

This subsection is for Task 5 - Case 2 Physical Aero 2
Now Open and run the q_aero2_state_feedback.slx Simulink model before running this section
% Plot data from running q_aero2_state_feedback.slx model 
load("qsfback_t5.mat");
do_plot(qsfback_t5, 'con','State feedback T5 case 2 Aero2 Hardware')



Sensing
Use the following section to complete the steps for Tasks 6 and 7 from the Question set
Task 6
This subsection is for Task 6 - Case 1 Simulation.
Make sure to run this section before running the simulink models for Task 6
% Uncomment the code below to enter gain K then run this section
 K = [1350 1000];

Nbar = 1.17;

clear logging;
logging = 't6'; % used for logging data correctly

Now Open and run the s_aero2_state_feedback.slx Simulink model before running this section
% Plot data from running s_aero2_state_feedback.slx model 
load("ssfback_t6.mat");
do_plot(ssfback_t6, 'con', 'State feedback t6 case 1 Simulation')

This subsection is for Task 6 - Case 2 Aero 2 Hardware.
Now Open and run the q_aero2_state_feedback.slx Simulink model before running this section
% Plot data from running q_aero2_state_feedback.slx model 
load("qsfback_t6.mat");
do_plot(qsfback_t6, 'con', 'State feedback t6 case 2 Aero 2 Hardware')



Task 7
Use the following sections to complete the steps for Task 7 from blackboard. 
This subsection is for Task 7 - Case 1 Simulation.
Make sure to run this section before running the Simulink models for Task 7.
% Uncomment the code below to enter gain K

K = [1350 0];

Nbar = 1.17;

clear logging simTime;
logging = 't7'; % used for logging data correctly
simTime = 10; % Do not modify

Now Open and run the s_aero2_state_feedback.slx Simulink model before running this section
% Plot data from running s_aero2_state_feedback.slx model 
load("ssfback_t7.mat");
do_plot(ssfback_t7, 'con', 'State feedback t7 case 1 Simulation')

Now Open and run the q_aero2_state_feedback.slx Simulink model before running this section. 
Attention: Be careful when running this simulation as the Aero 2 may become very unstable.
% Plot data from running q_aero2_state_feedback.slx model 
load("qsfback_t7.mat");
do_plot(qsfback_t7, 'con', 'State feedback t7 case 2 Aero 2 Hardware')



Observer
Use this section to complete the steps for Tasks 8 to 11 from the Question set
Task 8
The subsection is for Task 8
% Uncomment and use this section to compute the observer gain L
p1 = [-0.034 -0.05];
L=place(A',C',p1)';

% Extract elements of K matrix for blackboard
l1 = L(1)
l2 = L(2)



Task 9
Use the following sections to complete the steps for Task 9 from the Question set.
This subsection is for Task 9 - Case 1 Simulation. 
Make sure to run this section before running any of the simulink models for Task 9.
% Set loggin variable for Task 9
logging = 't9'; % used for logging data correctly
simTime = 50; % Do not modify

Nbar = 1.17;

Now Open and run the s_aero2_observer.slx Simulink model before running this section
% Plot data from running s_aero2_observer.slx model 
load("sobs_t9.mat");
do_plot(sobs_t9, 'obs', 'Observer t9 case 1 Simulation')

This subsection is for Task 9 - Case 2 Physical Aero 2
Now Open and run the q_aero2_observer.slx Simulink model before running this section
% Plot data from running q_aero2_observer.slx model 
load("qobs_t9.mat");
do_plot(qobs_t9, 'obs', 'Observer t9 case 2 Aero 2 Hardware')



Task 10
This subsection is for Task 10
% Uncomment and use this section to compute the observer gain L
 p2 = [-3.8 -2.4];
 L=place(A',C',p2)';

% Extract elements of K matrix for blackboard
l1 = L(1)
l2 = L(2)



Task 11
Use the following sections to complete the steps for Task 11 from the Question set.
This subsection is for Task 11 - Case 1 Simulation. 
Make sure to run this section before running any of the simulink models for Task 11.
% Set loggin variable
logging = 't11'; % used for logging data correctly

Nbar = 1.17;

Now Open and run the s_aero2_observer.slx Simulink model before running this section
% Plot data from running s_aero2_observer.slx model 
load("sobs_t11.mat");
do_plot(sobs_t11, 'obs', 'Observer t11 case 1 Simulation')

This subsection is for Task 11 - Case 2 Physical Aero 2
Now Open and run the q_aero2_observer.slx Simulink model before running this section
% Plot data from running q_aero2_observer.slx model 
load("qobs_t11.mat");
do_plot(qobs_t11, 'obs', 'Observer t11 case 2 Aero 2 Hardware')



Output Feedback
Use this section to complete the steps for Task 12 from the Question sets.
Task 12
The first subsection is for Task 12
% Use this section to compute the observer gain L
 K = [1350 1000];
 L = [6.0 11.0]';
Nbar = 1.17;

clear logging;
logging = 't12'

Now open and run the s_aero2_output_feedback.slx Simulink model before running this section
% plot data from running s_aero2_output_feedback.slx
load("sofb_t12.mat");
do_plot(sofb_t12, 'ofb', 'Output feedback t12 Simulation')

Now open and run the q_aero2_output_feedback.slx Simulink model before running this section
% plot data from running q_aero2_output_feedback.slx
load("qofb_t12.mat")
do_plot(qofb_t12, 'ofb', 'Output feedback t12 Aero 2 Hardware')