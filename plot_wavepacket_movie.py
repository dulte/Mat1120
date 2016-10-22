# -*- coding: utf-8 -*-
"""
Created on Wed Oct 19 15:48:42 2016

@author: Laila
"""
from numpy import *
import matplotlib.pyplot as plt
import glob, os  #delete old files automatically

def animation(func, M, N, xmin, xmax, ymin, ymax, nx,nt):
    x = linspace(xmin, xmax, nx)
    s = zeros_like(x)
    
    old_files = glob.glob("tmp*.png")
    for file in old_files:
        os.remove(file)
        
    plt.ion()
    #plt.plot(x)
    
    lines = plt.plot(x, s)    
    plt.axis([xmin,xmax,ymin,ymax])
    
    framenumber = 0      
    t_val = linspace(M,N+1,nt)
    for i in t_val:#range(M, N+1):
        s = func(x,i)
        lines[0].set_ydata(s)
        plt.draw()
        plt.pause(0.05)
        #plt.savefig('tmp_%04d.png' %framenumber)
        framenumber += 1
        #time.sleep(1)
        
    
def wave_func(x,t):
    return exp(-(x-3*t)**2)*sin(3*pi*(x-t))
    
animation(wave_func,-1,1,-6,6,-1,1,1001,60)

