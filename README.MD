<h1>LiveIntent Testing Demonstration</h1>

This is a Selenium test automation demo of LiveIntent's website using the Robot Framework.

The following Python modules are needed:

	pip
	virtualenv
	
	To install virtualenv, run: "python -m pip install virtualenv"

Clone repository:

	Run "git clone https://github.com/heii70/LiveIntent-Testing-Assignment.git"

Create virtual environment and install dependencies:
	
	open a terminal and navigate to the root of the work folder
	run "python -m virtualenv venv"
	run "venv\Scripts\activate" (Windows) or "source venv/bin/activate" (Linux)

	you should now be inside the virtual environment
	run "pip install -r requirements.txt"

Run automation test:

	run "robot -d ./results testdemo.robot"