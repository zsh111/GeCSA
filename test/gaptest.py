'''
Author: your name
Date: 2021-03-12 22:23:08
LastEditTime: 2021-04-08 22:46:06
LastEditors: Please set LastEditors
Description: In User Settings Edit
FilePath: /GenCSA_savefile/GeCSA/test/gaptest.py
'''
fu=['testcase']
D=128
# data=[
# '/media/lab/MyPassport/gll/human-ref/GRCh38-ncbi/GCA_000001405.15_GRCh38_no_alt_analysis_set.fna/GCA_000001405.15_GRCh38_no_alt_analysis_set.fna',
# '/home/lab/lab/lp/samcode/ERR47/ERR194147_2.fastq.dna',
# '/media/lab/802505ad-4b0f-498b-b65f-07656d880d7d/fastqDivisionData/ERR194146_1.fastq.dna'
# ]
data=['/media/lab/802505ad-4b0f-498b-b65f-07656d880d7d/fastqDivisionData/ERR194146_1.fastq.dna']
# data=['/home/lab/lab/lp/samcode/ERR47/ERR194147_2.fastq.dna','/home/lab/lab/lp/samcode/ERR47/ERR194146_1.fastq.dna','/home/lab/lab/lp/samcode/ERR47/GCA_000001405.15_GRCh38_no_alt_analysis_set.fna']
s_type=['0']
# count
# b_size=['32','64','128']
# s_step=['128']
# testTime='30'
# locate
b_size=['256']
s_step=['32','64','128','256']
# s_step=['512']
# file='/home/lab/lab/oldlab/lab/testfile/'
testTime='1000'
def getcommand():
    cmd=[]
    for d in data:
        for f in fu:
            for ss in s_step:
                for b in b_size:
                    cmd.append('./'+f+' '+d+' '+b+' '+ss+' '+testTime)
    return cmd
def getbash(cmd):
    print('#!/bin/bash')
    for c in cmd:
        print('echo \''+c+'\'')
        print(c)
        print('echo '+'\''+'  '+'\'')
        print('echo '+'\''+'  '+'\'')
c=getcommand()
getbash(c)
