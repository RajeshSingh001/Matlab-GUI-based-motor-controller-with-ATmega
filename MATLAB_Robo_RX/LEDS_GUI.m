function varargout = LEDS_GUI(varargin)
% LEDS_GUI MATLAB code for LEDS_GUI.fig
%      LEDS_GUI, by itself, creates a new LEDS_GUI or raises the existing
%      singleton*.
%
%      H = LEDS_GUI returns the handle to a new LEDS_GUI or the handle to
%      the existing singleton*.
%
%      LEDS_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LEDS_GUI.M with the given input arguments.
%
%      LEDS_GUI('Property','Value',...) creates a new LEDS_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LEDS_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LEDS_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LEDS_GUI

% Last Modified by GUIDE v2.5 02-Oct-2014 22:29:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LEDS_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @LEDS_GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before LEDS_GUI is made visible.
function LEDS_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LEDS_GUI (see VARARGIN)

% Choose default command line output for LEDS_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes LEDS_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = LEDS_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear all;
s=serial('COM1');
set(s,'BaudRate',1200);
fopen(s);
fprintf(s,'%s','b');
fclose(s)
delete(s)
clear s

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear all;
s=serial('COM1');
set(s,'BaudRate',1200);
fopen(s);
fprintf(s,'%s','a');
fclose(s)
delete(s)
clear s


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear all;
s=serial('COM1');
set(s,'BaudRate',1200);
fopen(s);
fprintf(s,'%s','c');
fclose(s)
delete(s)
clear s

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear all;
s=serial('COM1');
set(s,'BaudRate',1200);
fopen(s);
fprintf(s,'%s','d');
fclose(s)
delete(s)
clear s

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

clear all;
s=serial('COM1');
set(s,'BaudRate',1200);
fopen(s);
fprintf(s,'%s','e');
fclose(s)
delete(s)
clear s
% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pushbutton5.
function pushbutton5_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
