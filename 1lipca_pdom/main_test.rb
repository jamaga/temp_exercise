require 'test/unit'
require './main_class.rb'

class MainTest < Test::Unit::TestCase

  def test_uno


    assert_equal 'Ala i Tomek są parą. Kasia i Marek nie są przyjaciółmi.', Main.build_string(

    [
        [
            ['ala', 'kasia'],
            ['tomek', 'marek'],
        ],

        [
            ['są', 'nie są']
        ],

        [
            ['parą', 'przyjaciółmi']
        ]
    ])


    ##############


    assert_equal 'Ala i Tomek są parą. Kasia i Marek nie są.', Main.build_string(
    [
        [
            ['ala', 'kasia'],
            ['tomek', 'marek'],
        ],

        [
            ['są', 'nie są', 'mogą być']
        ],

        [
            ['parą', nil, 'przyjaciółmi']
        ]
    ])


    ##############


    assert_equal 'Ala i Tomek lubią się. Kasia i Marek nie są przyjaciółmi.', Main.build_string(
    [
        [
            ['ala', 'kasia'],
            ['tomek', 'marek'],
        ],

        [
            ['', 'nie są', nil]
        ],

        [
            ['lubią się', 'przyjaciółmi']
        ]
    ])


    #################


    assert_equal 'Ala i Tomek są przyjaciółmi. Kasia i Marek istnieją. Basia jest sama.', Main.build_string(
    [
        [
            ['ala', 'kasia', 'basia'],
            ['tomek', 'marek'],
        ],

        [
            ['są', '', 'jest']
        ],

        [
            ['przyjaciółmi', 'istnieją', 'sama', 'jedyna']
        ]
    ])


    ####################


    assert_equal 'Ala i Tomek są przyjaciółmi. Kasia i Marek istnieją. Marcin egzystuje.', Main.build_string(
    [
        [
            ['ala', 'kasia'],
            ['tomek', 'marek', 'marcin'],
        ],

        [
            ['są']
        ],

        [
            ['przyjaciółmi', 'istnieją', 'egzystuje', nil, '', 'jest']
        ]
    ])


    ###################


    assert_equal 'Ala i Tomek są dobrymi przyjaciółmi. Kasia i Marek istnieją. Marcin egzystuje.', Main.build_string(
    [
        [
            ['ala', 'kasia'],
            ['tomek', 'marek', 'marcin'],
        ],

        [
            ['są']
        ],

        [
            ['dobrymi', 'istnieją', 'egzystuje', nil, '', 'jest']
        ],

        [
            ['przyjaciółmi']
        ]
    ])


    ##########################

    assert_equal 'Ala i Tomek. Kasia i Marek istnieją. Marcin egzystuje.', Main.build_string(
    [
        [
            ['ala', 'kasia'],
            ['tomek', 'marek', 'marcin'],
        ],

        [],

        [
            ['', 'istnieją', 'egzystuje']
        ]
    ])


    #########################

    assert_equal 'Ala i Tomek. Kasia i Marek. Marcin.', Main.build_string(
    [
        [
            ['ala', 'kasia'],
            ['tomek', 'marek', 'marcin'],
        ],

        [],

        []
    ])


    ###########################

    assert_equal 'Ala i Tomek. Kasia i Marek. Marcin.', Main.build_string(
    [
        [
            ['ala', 'kasia'],
            ['tomek', 'marek', 'marcin'],
        ]
    ])


    ###########################

    assert_equal 'Ala i Tomek. Kasia i Marek istnieją. Marcin egzystuje.', Main.build_string(
    [
        [
            ['ala', 'kasia'],
            ['tomek', 'marek', 'marcin'],
        ],

        [
            ['', 'istnieją', 'egzystuje']
        ]
    ])

    ################################

    assert_equal 'Ala i Tomek są lub nie są parą. Kasia i Marek nie są lub mogą być przyjaciółmi.', Main.build_string(

    [
        [
            ['ala', 'kasia'],
            ['tomek', 'marek'],
        ],

        [
            ['są', 'nie są', 'coś'],
            ['nie są', 'mogą być'],
        ],

        [
            ['parą', 'przyjaciółmi']
        ]
    ])


    ################################
    # [
    #     [
    #         ['ala', 'kasia'],
    #         ['tomek', 'marek'],
    #     ],
    #
    #     [
    #         ['są', 'nie są', 'ss'],
    #         ['nie są', 'mogą być'],
    #     ],
    #
    #     [
    #         ['parą', 'przyjaciółmi'],
    #         ['małżeństwem', 'rodziną'],
    #     ]
    # ]


  end

end