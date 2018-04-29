//
//  AddStudyGroupViewController.swift
//  share-time
//
//  Created by Godwin Pang on 4/14/18.
//  Copyright © 2018 share-time. All rights reserved.
//

import UIKit

class AddStudyGroupViewController: UIViewController {

    @IBOutlet weak var groupNameLabel: UILabel!
    @IBOutlet weak var memberSearchBar: UITextField!
    @IBOutlet weak var groupMemberLabel: UILabel!
    
    var courseArray = ["AAS 10", "ANAR 100", "ANAR 153", "ANAR 154", "ANAR 156", "ANAR 164", "ANBI 100", "ANBI 111", "ANBI 116", "ANBI 133", "ANBI 141", "ANBI 143", "ANBI 145", "ANBI 159", "ANBI 173", "ANSC 101", "ANSC 105", "ANSC 106", "ANSC 118", "ANSC 120", "ANSC 121", "ANSC 122", "ANSC 124", "ANSC 125", "ANSC 131", "ANSC 135", "ANSC 136", "ANSC 137", "ANSC 140", "ANSC 146", "ANSC 147", "ANSC 148", "ANSC 150", "ANSC 155", "ANSC 162", "ANSC 166", "ANSC 175", "ANSC 178", "ANSC 180", "ANSC 181", "ANTH 1", "ANTH 101", "ANTH 102", "ANTH 103", "ANTH 2", "ANTH 21", "ANTH 23", "ANTH 3", "BENG 100", "BENG 102", "BENG 103B", "BENG 110", "BENG 112A", "BENG 112B", "BENG 120", "BENG 122A", "BENG 123", "BENG 125", "BENG 130", "BENG 133", "BENG 134", "BENG 135", "BENG 140A", "BENG 140B", "BENG 141", "BENG 147A", "BENG 147B", "BENG 152", "BENG 160", "BENG 161A", "BENG 161B", "BENG 162", "BENG 166A", "BENG 168", "BENG 172", "BENG 181", "BENG 182", "BENG 183", "BENG 186A", "BENG 186B", "BENG 187D", "BENG 189", "BENG 2", "BIBC 100", "BIBC 102", "BIBC 103", "BIBC 120", "BIBC 140", "BIBC 194", "BICD 100", "BICD 101", "BICD 110", "BICD 112", "BICD 123", "BICD 130", "BICD 136", "BICD 140", "BICD 145", "BICD 194", "BIEB 100", "BIEB 102", "BIEB 121", "BIEB 123", "BIEB 126", "BIEB 128", "BIEB 140", "BIEB 143", "BIEB 150", "BIEB 152", "BIEB 166", "BIEB 176", "BILD 1", "BILD 10", "BILD 12", "BILD 18", "BILD 2", "BILD 22", "BILD 26", "BILD 3", "BILD 38", "BILD 4", "BILD 51", "BILD 60", "BILD 7", "BIMM 100", "BIMM 101", "BIMM 110", "BIMM 112", "BIMM 114", "BIMM 116", "BIMM 118", "BIMM 120", "BIMM 121", "BIMM 122", "BIMM 124", "BIMM 134", "BIMM 140", "BIMM 171", "BIMM 171A", "BIMM 171B", "BIMM 185", "BIMM 194", "BIPN 100", "BIPN 102", "BIPN 105", "BIPN 106", "BIPN 108", "BIPN 120", "BIPN 134", "BIPN 140", "BIPN 142", "BIPN 144", "BIPN 146", "BIPN 148", "BIPN 150", "BIPN 152", "BIPN 194", "BISP 170", "BISP 194", "CAT 1", "CAT 124", "CAT 125", "CAT 125R", "CAT 2", "CAT 3", "CENG 100", "CENG 101A", "CENG 101B", "CENG 101C", "CENG 102", "CENG 113", "CENG 114", "CENG 120", "CENG 122", "CENG 124A", "CENG 124B", "CENG 134", "CENG 15", "CENG 157", "CENG 176A", "CENG 176B", "CGS 100", "CGS 101", "CGS 103", "CGS 105", "CGS 106", "CGS 107", "CGS 111", "CGS 112", "CGS 114", "CGS 2A", "CGS 2B", "CHEM 100A", "CHEM 100B", "CHEM 105A", "CHEM 108", "CHEM 109", "CHEM 11", "CHEM 114A", "CHEM 114B", "CHEM 114C", "CHEM 114D", "CHEM 118", "CHEM 12", "CHEM 120A", "CHEM 120B", "CHEM 125", "CHEM 126", "CHEM 127", "CHEM 13", "CHEM 130", "CHEM 131", "CHEM 132", "CHEM 140A", "CHEM 140B", "CHEM 140BH", "CHEM 140C", "CHEM 140CH", "CHEM 143A", "CHEM 143AM", "CHEM 143B", "CHEM 143C", "CHEM 151", "CHEM 152", "CHEM 154", "CHEM 157", "CHEM 164", "CHEM 167", "CHEM 168", "CHEM 171", "CHEM 172", "CHEM 173", "CHEM 174", "CHEM 4", "CHEM 6A", "CHEM 6AH", "CHEM 6B", "CHEM 6BH", "CHEM 6C", "CHEM 6CH", "CHEM 7L", "CHEM 7LM", "CHIN 100AM", "CHIN 10AD", "CHIN 10AM", "CHIN 10AN", "CHIN 10BD", "CHIN 10BM", "CHIN 10BN", "CHIN 10CD", "CHIN 10CM", "CHIN 10CN", "CHIN 20AD", "CHIN 20AM", "CHIN 20AN", "CHIN 20BN", "CHIN 20CD", "CHIN 20CN", "COGS 1", "COGS 10", "COGS 100", "COGS 101A", "COGS 101B", "COGS 101C", "COGS 102A", "COGS 102B", "COGS 102C", "COGS 107A", "COGS 107B", "COGS 107C", "COGS 108", "COGS 109", "COGS 11", "COGS 110", "COGS 115", "COGS 118A", "COGS 118B", "COGS 12", "COGS 120", "COGS 121", "COGS 122", "COGS 13", "COGS 143", "COGS 14A", "COGS 14B", "COGS 15", "COGS 151", "COGS 152", "COGS 153", "COGS 154", "COGS 155", "COGS 156", "COGS 160", "COGS 163", "COGS 164", "COGS 17", "COGS 171", "COGS 171GS", "COGS 172", "COGS 174", "COGS 174GS", "COGS 175", "COGS 177", "COGS 181", "COGS 185", "COGS 187A", "COGS 187B", "COGS 188", "COGS 189", "COGS 3", "COGS 8", "COGS 9", "COMM 10", "COMM 100A", "COMM 100B", "COMM 100C", "COMM 101", "COMM 101N", "COMM 101T", "COMM 102C", "COMM 102M", "COMM 102P", "COMM 103E", "COMM 103F", "COMM 104E", "COMM 104G", "COMM 105G", "COMM 106A", "COMM 106F", "COMM 106G", "COMM 106I", "COMM 107", "COMM 108G", "COMM 109D", "COMM 109N", "COMM 109P", "COMM 110M", "COMM 110P", "COMM 110T", "COMM 111C", "COMM 111D", "COMM 111F", "COMM 111G", "COMM 111P", "COMM 111T", "COMM 112C", "COMM 113T", "COMM 114D", "COMM 114E", "COMM 114F", "COMM 114G", "COMM 114J", "COMM 114N", "COMM 114P", "COMM 120M", "COMM 120N", "COMM 124A", "COMM 126", "COMM 127", "COMM 131", "COMM 132", "COMM 133", "COMM 135", "COMM 136", "COMM 137", "COMM 143", "COMM 144", "COMM 145", "COMM 146", "COMM 151", "COMM 152", "COMM 153", "COMM 155", "COMM 158", "COMM 159", "COMM 160", "COMM 162", "COMM 163", "COMM 166", "COMM 168", "COMM 170", "COMM 171", "COMM 173", "COMM 176", "COMM 179", "COMM 190", "CSE 100", "CSE 101", "CSE 103", "CSE 105", "CSE 107", "CSE 11", "CSE 110", "CSE 112", "CSE 118", "CSE 12", "CSE 120", "CSE 123", "CSE 124", "CSE 125", "CSE 127", "CSE 130", "CSE 131", "CSE 132A", "CSE 132B", "CSE 134B", "CSE 135", "CSE 136", "CSE 140", "CSE 140L", "CSE 141", "CSE 141L", "CSE 143", "CSE 145", "CSE 150", "CSE 151", "CSE 152", "CSE 158", "CSE 15L", "CSE 160", "CSE 163", "CSE 165", "CSE 166", "CSE 167", "CSE 168", "CSE 169", "CSE 170", "CSE 180", "CSE 181", "CSE 182", "CSE 190", "CSE 191", "CSE 20", "CSE 21", "CSE 3", "CSE 30", "CSE 5A", "CSE 7", "CSE 8A", "CSE 8B", "DOC 1", "DOC 100D", "DOC 2", "DOC 3", "DSGN 1", "DSGN 100", "ECE 100", "ECE 101", "ECE 102", "ECE 103", "ECE 107", "ECE 109", "ECE 111", "ECE 115", "ECE 120", "ECE 121", "ECE 121A", "ECE 121B", "ECE 123", "ECE 125A", "ECE 125B", "ECE 134", "ECE 135A", "ECE 136L", "ECE 145BL", "ECE 15", "ECE 153", "ECE 154A", "ECE 154B", "ECE 154C", "ECE 158A", "ECE 158B", "ECE 16", "ECE 161A", "ECE 161B", "ECE 161C", "ECE 163", "ECE 164", "ECE 165", "ECE 166", "ECE 171A", "ECE 171B", "ECE 172A", "ECE 174", "ECE 175A", "ECE 175B", "ECE 180", "ECE 182", "ECE 183", "ECE 187", "ECE 188", "ECE 191", "ECE 25", "ECE 30", "ECE 35", "ECE 45", "ECE 65", "ECON 1", "ECON 100A", "ECON 100B", "ECON 100C", "ECON 101", "ECON 102", "ECON 105", "ECON 107", "ECON 109", "ECON 110A", "ECON 110B", "ECON 111", "ECON 113", "ECON 116", "ECON 120A", "ECON 120B", "ECON 120C", "ECON 125", "ECON 130", "ECON 131", "ECON 132", "ECON 135", "ECON 136", "ECON 139", "ECON 140", "ECON 142", "ECON 143", "ECON 144", "ECON 145", "ECON 146", "ECON 147", "ECON 150", "ECON 151", "ECON 159", "ECON 162", "ECON 164", "ECON 165", "ECON 171", "ECON 172A", "ECON 172B", "ECON 173A", "ECON 173AL", "ECON 173B", "ECON 174", "ECON 176", "ECON 178", "ECON 2", "ECON 3", "ECON 4", "EDS 111", "EDS 112", "EDS 113", "EDS 114", "EDS 115", "EDS 117", "EDS 118", "EDS 119", "EDS 125", "EDS 126", "EDS 128A", "EDS 128B", "EDS 129A", "EDS 129B", "EDS 129C", "EDS 130", "EDS 131", "EDS 136", "EDS 137", "EDS 39", "ELWR 1", "ELWR 2B", "ENG 10", "ENG 100B", "ENG 100D", "ENG 100L", "ENVR 102", "ENVR 110", "ENVR 120", "ENVR 140", "ENVR 30", "ESYS 10", "ESYS 101", "ESYS 102", "ESYS 103", "ESYS 190B", "ETHN 1", "ETHN 100A", "ETHN 100B", "ETHN 100C", "ETHN 101", "ETHN 102", "ETHN 103", "ETHN 104", "ETHN 106", "ETHN 110", "ETHN 113", "ETHN 115", "ETHN 116", "ETHN 117", "ETHN 118", "ETHN 119", "ETHN 121", "ETHN 122", "ETHN 123", "ETHN 124", "ETHN 126", "ETHN 127", "ETHN 129", "ETHN 137", "ETHN 140", "ETHN 142", "ETHN 143", "ETHN 151", "ETHN 152", "ETHN 155", "ETHN 164", "ETHN 174", "ETHN 178", "ETHN 182", "ETHN 185", "ETHN 187", "ETHN 189", "ETHN 2", "ETHN 20", "ETHN 3", "FMPH 40", "FPMU 101", "FPMU 102", "FPMU 110", "FPMU 120", "FPMU 130", "FPMU 40", "GLBH 150A", "GLBH 150B", "GLBH 181", "HDP 1", "HDP 110", "HDP 111", "HDP 120", "HDP 121", "HDP 122", "HDP 133", "HDP 150", "HDP 181", "HDP 191", "HIAF 111", "HIAF 112", "HIAF 113", "HIEA 112", "HIEA 115", "HIEA 124", "HIEA 126", "HIEA 131", "HIEA 132", "HIEA 133", "HIEA 137", "HIEA 138", "HIEA 140", "HIEA 144", "HIEA 150", "HIEA 151", "HIEA 153", "HIEU 101", "HIEU 102", "HIEU 103", "HIEU 106", "HIEU 107", "HIEU 109", "HIEU 115", "HIEU 116A", "HIEU 116B", "HIEU 117GS", "HIEU 120", "HIEU 121GS", "HIEU 122", "HIEU 127", "HIEU 128", "HIEU 137", "HIEU 141", "HIEU 142", "HIEU 143", "HIEU 144", "HIEU 145", "HIEU 146", "HIEU 148", "HIEU 150", "HIEU 153", "HIEU 154", "HIEU 154GS", "HIEU 156", "HIEU 158", "HILA 100", "HILA 102", "HILA 103", "HILA 121A", "HILA 121B", "HILA 122", "HILA 123", "HILA 124", "HILA 131", "HILA 132", "HILD 10", "HILD 11", "HILD 12", "HILD 14", "HILD 2A", "HILD 2B", "HILD 2C", "HILD 30", "HILD 7A", "HILD 7B", "HILD 7C", "HINE 102", "HINE 108", "HINE 109", "HINE 114", "HINE 116", "HINE 118", "HINE 119", "HINE 120", "HINE 145", "HISC 106", "HISC 107", "HISC 108", "HISC 110", "HISC 115", "HISC 116", "HISC 117", "HISC 131", "HITO 136", "HITO 155", "HIUS 103", "HIUS 111", "HIUS 112", "HIUS 113", "HIUS 123", "HIUS 126", "HIUS 133", "HIUS 136", "HIUS 141", "HIUS 142A", "HIUS 145", "HIUS 146", "HIUS 148", "HIUS 150", "HIUS 157", "HIUS 158", "HUM 1", "HUM 2", "HUM 3", "HUM 3GS", "HUM 4", "HUM 4GS", "HUM 5", "ICAM 110", "ICAM 120", "ICAM 160A", "ICAM 160B", "INTL 101", "INTL 102", "INTL 190", "JAPN 10A", "JAPN 10B", "JAPN 10C", "JAPN 130A", "JAPN 20A", "JAPN 20B", "JAPN 20C", "LATI 50", "LAWS 101", "LIGN 101", "LIGN 105", "LIGN 110", "LIGN 111", "LIGN 112", "LIGN 118", "LIGN 119", "LIGN 120", "LIGN 121", "LIGN 130", "LIGN 143", "LIGN 144", "LIGN 146", "LIGN 148", "LIGN 150", "LIGN 155", "LIGN 160", "LIGN 165", "LIGN 17", "LIGN 170", "LIGN 171", "LIGN 175", "LIGN 176", "LIGN 177", "LIGN 179", "LIGN 180", "LIGN 181", "LIGN 4", "LIGN 5", "LIGN 7", "LIGN 8", "LIHL 112F", "LIHL 112P", "LIHL 114F", "LIHL 114W", "LIHL 119", "LIHL 119W", "LIHL 124W", "LIHL 132F", "LIHL 132P", "LTCH 101", "LTCS 110", "LTCS 110GS", "LTCS 111GS", "LTCS 125", "LTCS 130", "LTCS 131", "LTCS 150", "LTCS 165", "LTCS 170", "LTCS 50", "LTCS 52", "LTEA 110A", "LTEA 110B", "LTEA 110C", "LTEA 120A", "LTEA 120B", "LTEA 120C", "LTEA 138", "LTEA 138GS", "LTEA 140", "LTEA 141", "LTEA 142", "LTEA 143", "LTEN 107", "LTEN 110", "LTEN 112", "LTEN 113", "LTEN 124", "LTEN 127", "LTEN 140", "LTEN 149", "LTEN 159", "LTEN 172", "LTEN 174", "LTEN 175A", "LTEN 175B", "LTEN 176", "LTEN 178", "LTEN 181", "LTEN 185", "LTEN 21", "LTEN 22", "LTEN 23", "LTEN 25", "LTEN 26", "LTEN 27", "LTEN 28", "LTEN 29", "LTEU 105", "LTGK 1", "LTGK 2", "LTGM 2A", "LTIT 2A", "LTIT 2B", "LTKO 100", "LTKO 149", "LTLA 1", "LTLA 2", "LTLA 3", "LTRU 1A", "LTRU 1B", "LTRU 1C", "LTSP 136", "LTSP 138", "LTSP 140", "LTSP 142", "LTSP 171", "LTSP 176", "LTSP 2E", "LTTH 115", "LTTH 150", "LTWL 100", "LTWL 114", "LTWL 116", "LTWL 120", "LTWL 124", "LTWL 135", "LTWL 172", "LTWL 175GS", "LTWL 176", "LTWL 180", "LTWL 180GS", "LTWL 181", "LTWL 183", "LTWL 184", "LTWL 19A", "LTWL 19B", "LTWL 19C", "LTWR 100", "LTWR 102", "LTWR 106", "LTWR 110", "LTWR 113", "LTWR 115", "LTWR 120", "LTWR 121", "LTWR 122", "LTWR 129", "LTWR 143", "LTWR 148", "LTWR 8A", "LTWR 8B", "LTWR 8C", "MAE 101A", "MAE 101B", "MAE 101C", "MAE 104", "MAE 105", "MAE 107", "MAE 108", "MAE 110A", "MAE 110B", "MAE 113", "MAE 118", "MAE 119", "MAE 120", "MAE 122", "MAE 123", "MAE 124", "MAE 126A", "MAE 126B", "MAE 130A", "MAE 130B", "MAE 130C", "MAE 131A", "MAE 131B", "MAE 133", "MAE 140", "MAE 142", "MAE 143A", "MAE 143B", "MAE 143C", "MAE 144", "MAE 150", "MAE 154", "MAE 155A", "MAE 155B", "MAE 156A", "MAE 156B", "MAE 160", "MAE 170", "MAE 171A", "MAE 175A", "MAE 180A", "MAE 181", "MAE 2", "MAE 20", "MAE 3", "MAE 5", "MAE 8", "MATH 100A", "MATH 100B", "MATH 100C", "MATH 102", "MATH 103A", "MATH 103B", "MATH 104A", "MATH 109", "MATH 10A", "MATH 10B", "MATH 10C", "MATH 11", "MATH 110A", "MATH 111A", "MATH 120A", "MATH 120B", "MATH 121A", "MATH 130A", "MATH 140A", "MATH 140B", "MATH 140C", "MATH 142A", "MATH 142B", "MATH 150A", "MATH 152", "MATH 153", "MATH 154", "MATH 155A", "MATH 15A", "MATH 163", "MATH 168A", "MATH 170A", "MATH 170B", "MATH 170C", "MATH 171A", "MATH 171B", "MATH 174", "MATH 179", "MATH 18", "MATH 180A", "MATH 180B", "MATH 180C", "MATH 181A", "MATH 181B", "MATH 181C", "MATH 181E", "MATH 183", "MATH 184A", "MATH 185", "MATH 186", "MATH 187", "MATH 187B", "MATH 189", "MATH 193A", "MATH 193B", "MATH 194", "MATH 2", "MATH 20A", "MATH 20B", "MATH 20C", "MATH 20D", "MATH 20E", "MATH 20F", "MATH 31AH", "MATH 31BH", "MATH 31CH", "MATH 3C", "MATH 4C", "MATH 95", "MGT 103", "MGT 105", "MGT 106", "MGT 112", "MGT 117", "MGT 12", "MGT 121A", "MGT 121B", "MGT 129", "MGT 131A", "MGT 131B", "MGT 132", "MGT 133", "MGT 134", "MGT 135", "MGT 136", "MGT 137", "MGT 139", "MGT 143", "MGT 146", "MGT 153", "MGT 16", "MGT 162", "MGT 164", "MGT 166", "MGT 167", "MGT 172", "MGT 173", "MGT 174", "MGT 18", "MGT 181", "MGT 183", "MGT 184", "MGT 185", "MGT 187", "MGT 3", "MGT 4", "MGT 45", "MGT 5", "MMW 11", "MMW 12", "MMW 121", "MMW 122", "MMW 13", "MMW 14", "MMW 14GS", "MMW 15", "MMW 15GS", "MUS 11", "MUS 111", "MUS 113", "MUS 114", "MUS 115", "MUS 12", "MUS 126", "MUS 127", "MUS 127A", "MUS 127B", "MUS 13", "MUS 130", "MUS 137A", "MUS 13AF", "MUS 13AM", "MUS 13AS", "MUS 14", "MUS 15", "MUS 150GS", "MUS 153", "MUS 16", "MUS 17", "MUS 170", "MUS 171", "MUS 172", "MUS 173", "MUS 174A", "MUS 174B", "MUS 174C", "MUS 175", "MUS 1A", "MUS 1B", "MUS 1C", "MUS 20", "MUS 2A", "MUS 2B", "MUS 4", "MUS 5", "MUS 6", "MUS 8", "MUS 8GS", "MUS 9", "MUS 95C", "MUS 95E", "MUS 95JC", "MUS 95K", "MUS 95L", "MUS 95W", "NANO 100L", "NANO 101", "NANO 102", "NANO 103", "NANO 104", "NANO 106", "NANO 107", "NANO 108", "NANO 110", "NANO 111", "NANO 112", "NANO 120A", "NANO 120B", "NANO 134", "NANO 141A", "NANO 148", "NANO 15", "NANO 150", "NANO 156", "NANO 158", "NANO 161", "NANO 164", "PHIL 1", "PHIL 10", "PHIL 100", "PHIL 101", "PHIL 102", "PHIL 108", "PHIL 110", "PHIL 111", "PHIL 112", "PHIL 12", "PHIL 120", "PHIL 122", "PHIL 13", "PHIL 130", "PHIL 131", "PHIL 132", "PHIL 134", "PHIL 136", "PHIL 137", "PHIL 138", "PHIL 14", "PHIL 145", "PHIL 146", "PHIL 147", "PHIL 148", "PHIL 149", "PHIL 15", "PHIL 150", "PHIL 151", "PHIL 160", "PHIL 162", "PHIL 163", "PHIL 164", "PHIL 165", "PHIL 167", "PHIL 168", "PHIL 169", "PHIL 170", "PHIL 173", "PHIL 175", "PHIL 181", "PHIL 25", "PHIL 26", "PHIL 27", "PHIL 28", "PHIL 31", "PHIL 32", "PHIL 33", "PHIL 90", "PHYS 10", "PHYS 100A", "PHYS 100B", "PHYS 100C", "PHYS 105A", "PHYS 105B", "PHYS 11", "PHYS 110A", "PHYS 110B", "PHYS 120", "PHYS 124", "PHYS 13", "PHYS 130A", "PHYS 130B", "PHYS 133", "PHYS 140A", "PHYS 160", "PHYS 161", "PHYS 162", "PHYS 163", "PHYS 164", "PHYS 1A", "PHYS 1AL", "PHYS 1B", "PHYS 1BL", "PHYS 1C", "PHYS 1CL", "PHYS 2A", "PHYS 2B", "PHYS 2BL", "PHYS 2C", "PHYS 2CL", "PHYS 2D", "PHYS 2DL", "PHYS 4A", "PHYS 4B", "PHYS 4C", "PHYS 4D", "PHYS 4E", "PHYS 5", "PHYS 7", "PHYS 9", "POLI 10", "POLI 100A", "POLI 100B", "POLI 100C", "POLI 100DA", "POLI 100E", "POLI 100F", "POLI 100G", "POLI 100H", "POLI 100M", "POLI 100O", "POLI 102C", "POLI 102D", "POLI 103A", "POLI 103B", "POLI 104A", "POLI 104B", "POLI 104D", "POLI 104E", "POLI 104F", "POLI 104G", "POLI 104I", "POLI 104M", "POLI 104N", "POLI 104P", "POLI 105A", "POLI 108", "POLI 10D", "POLI 11", "POLI 110A", "POLI 110B", "POLI 110C", "POLI 110H", "POLI 111D", "POLI 113A", "POLI 113B", "POLI 113C", "POLI 114B", "POLI 117", "POLI 119A", "POLI 11D", "POLI 12", "POLI 120A", "POLI 120B", "POLI 120C", "POLI 120E", "POLI 120G", "POLI 120H", "POLI 120I", "POLI 120N", "POLI 120P", "POLI 121", "POLI 122", "POLI 122D", "POLI 123", "POLI 124", "POLI 125", "POLI 125B", "POLI 126", "POLI 126AA", "POLI 126AB", "POLI 127", "POLI 129", "POLI 12D", "POLI 13", "POLI 130B", "POLI 132", "POLI 133A", "POLI 133G", "POLI 133J", "POLI 134D", "POLI 136", "POLI 136A", "POLI 138D", "POLI 13D", "POLI 140B", "POLI 140D", "POLI 142A", "POLI 142D", "POLI 142I", "POLI 142J", "POLI 142K", "POLI 142L", "POLI 142M", "POLI 142P", "POLI 143A", "POLI 144", "POLI 144D", "POLI 144F", "POLI 145A", "POLI 145C", "POLI 146A", "POLI 147B", "POLI 150A", "POLI 151", "POLI 153", "POLI 160AA", "POLI 162", "POLI 163", "POLI 170A", "POLI 171", "POLI 194", "POLI 27", "POLI 28", "POLI 30", "POLI 30D", "POLI 5D", "PSYC 1", "PSYC 100", "PSYC 101", "PSYC 102", "PSYC 104", "PSYC 105", "PSYC 106", "PSYC 108", "PSYC 110", "PSYC 111A", "PSYC 111B", "PSYC 114", "PSYC 115A", "PSYC 116", "PSYC 117", "PSYC 120", "PSYC 121", "PSYC 122", "PSYC 124", "PSYC 125", "PSYC 128", "PSYC 129", "PSYC 130", "PSYC 133", "PSYC 134", "PSYC 137", "PSYC 141", "PSYC 142", "PSYC 144", "PSYC 145", "PSYC 147", "PSYC 148", "PSYC 150", "PSYC 151", "PSYC 152", "PSYC 153", "PSYC 154", "PSYC 155", "PSYC 156", "PSYC 157", "PSYC 158", "PSYC 162", "PSYC 164", "PSYC 166", "PSYC 168", "PSYC 169", "PSYC 171", "PSYC 172", "PSYC 176", "PSYC 178", "PSYC 179", "PSYC 180", "PSYC 181", "PSYC 181GS", "PSYC 182", "PSYC 188", "PSYC 190", "PSYC 191", "PSYC 193", "PSYC 193GS", "PSYC 2", "PSYC 3", "PSYC 4", "PSYC 6", "PSYC 60", "PSYC 7", "PSYC 70", "RELI 1", "RELI 101", "RELI 149", "RELI 150", "RELI 188", "RELI 2", "SE 1", "SE 101A", "SE 101B", "SE 101C", "SE 102", "SE 103", "SE 104", "SE 104L", "SE 110A", "SE 110B", "SE 115", "SE 120", "SE 121", "SE 121A", "SE 121B", "SE 125", "SE 130A", "SE 130B", "SE 131", "SE 140", "SE 140A", "SE 140B", "SE 142", "SE 143A", "SE 143B", "SE 150", "SE 151A", "SE 151B", "SE 152", "SE 154", "SE 160A", "SE 160B", "SE 163", "SE 171", "SE 180", "SE 181", "SE 182", "SE 184", "SE 2", "SE 3", "SE 9", "SIO 1", "SIO 10", "SIO 100", "SIO 101", "SIO 102", "SIO 103", "SIO 104", "SIO 105", "SIO 106", "SIO 108", "SIO 110", "SIO 113", "SIO 117", "SIO 119", "SIO 12", "SIO 120", "SIO 123", "SIO 126", "SIO 127", "SIO 128", "SIO 132", "SIO 133", "SIO 134", "SIO 136", "SIO 138", "SIO 141", "SIO 147", "SIO 15", "SIO 16", "SIO 160", "SIO 170", "SIO 170L", "SIO 180", "SIO 181", "SIO 183", "SIO 184", "SIO 187", "SIO 188", "SIO 189", "SIO 190", "SIO 20", "SIO 25", "SIO 3", "SIO 30", "SIO 35", "SIO 40", "SIO 45", "SIO 45GS", "SIO 50", "SOCI 1", "SOCI 10", "SOCI 100", "SOCI 102", "SOCI 104", "SOCI 104Q", "SOCI 107", "SOCI 111", "SOCI 112", "SOCI 113", "SOCI 115", "SOCI 117", "SOCI 118", "SOCI 118E", "SOCI 119", "SOCI 121", "SOCI 122", "SOCI 123", "SOCI 124", "SOCI 125", "SOCI 126", "SOCI 127", "SOCI 129", "SOCI 131", "SOCI 132", "SOCI 134", "SOCI 135", "SOCI 136F", "SOCI 137", "SOCI 138", "SOCI 139", "SOCI 140", "SOCI 141", "SOCI 142", "SOCI 143", "SOCI 144", "SOCI 145", "SOCI 146", "SOCI 147", "SOCI 148", "SOCI 148E", "SOCI 149", "SOCI 150", "SOCI 152", "SOCI 153", "SOCI 157", "SOCI 159", "SOCI 160", "SOCI 160E", "SOCI 162", "SOCI 163", "SOCI 172", "SOCI 173", "SOCI 178", "SOCI 179", "SOCI 180", "SOCI 182", "SOCI 184", "SOCI 185", "SOCI 187", "SOCI 188D", "SOCI 188E", "SOCI 188I", "SOCI 188M", "SOCI 189", "SOCI 2", "SOCI 20", "SOCI 30", "SOCI 40", "SOCI 50", "SOCI 60", "SOCI 70", "TDAC 1", "TDAC 101", "TDAC 102", "TDAC 103A", "TDAC 115", "TDAC 122", "TDDE 1", "TDDE 111", "TDDR 101", "TDDR 111", "TDGE 1", "TDGE 10", "TDGE 11", "TDGE 122", "TDGE 124", "TDGE 125", "TDGE 127", "TDGE 25", "TDGE 3", "TDGE 5", "TDHT 101", "TDHT 102", "TDHT 103", "TDHT 104", "TDHT 105", "TDHT 109", "TDHT 114", "TDHT 120", "TDHT 21", "TDHT 22", "TDHT 23", "TDMV 1", "TDMV 11", "TDMV 110", "TDMV 120", "TDMV 130", "TDMV 138", "TDMV 140", "TDMV 142", "TDMV 143", "TDMV 144", "TDMV 146", "TDMV 148", "TDMV 2", "TDMV 3", "TDPR 6", "TDPW 104", "TDTR 10", "TWS 21", "TWS 21GS", "TWS 22", "TWS 23", "TWS 25", "TWS 26", "USP 1", "USP 100", "USP 124", "USP 133", "USP 137", "USP 141B", "USP 143", "USP 144", "USP 145", "USP 147", "USP 170", "USP 171", "USP 173", "USP 175", "USP 177", "USP 179", "USP 180", "USP 186", "USP 187", "USP 189", "USP 191", "USP 2", "USP 3", "VIS 1", "VIS 100", "VIS 102", "VIS 105A", "VIS 105B", "VIS 105D", "VIS 106A", "VIS 106B", "VIS 107A", "VIS 111", "VIS 120B", "VIS 121AN", "VIS 124BN", "VIS 124CN", "VIS 125A", "VIS 125BN", "VIS 125DN", "VIS 126AN", "VIS 126BN", "VIS 126HN", "VIS 126I", "VIS 126K", "VIS 126P", "VIS 126Q", "VIS 127A", "VIS 127B", "VIS 127C", "VIS 127I", "VIS 127N", "VIS 128A", "VIS 128C", "VIS 135", "VIS 140", "VIS 141A", "VIS 142", "VIS 145A", "VIS 147A", "VIS 152D", "VIS 154", "VIS 158", "VIS 159", "VIS 164", "VIS 165", "VIS 167", "VIS 168", "VIS 171", "VIS 174", "VIS 175", "VIS 176", "VIS 177", "VIS 178", "VIS 180A", "VIS 180B", "VIS 181", "VIS 182", "VIS 183A", "VIS 183B", "VIS 194S", "VIS 2", "VIS 20", "VIS 21A", "VIS 21B", "VIS 22", "VIS 3", "VIS 30", "VIS 40", "VIS 41", "VIS 60", "VIS 70N", "VIS 80", "VIS 84", "WCWP 100", "WCWP 10A", "WCWP 10B"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
